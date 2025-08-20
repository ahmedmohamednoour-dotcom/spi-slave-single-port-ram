module SPI_Slave (clk, rst_n, SS_n, tx_valid, MOSI, MISO, tx_data, rx_valid, rx_data);
/*===============================================*/
// states
/*===============================================*/
parameter IDLE_STATE     = 3'b000;
parameter CMD_CHECK      = 3'b001;
parameter WRITE_MODE     = 3'b010;
parameter READ_ADDRESS   = 3'b011;
parameter READ_DATA      = 3'b100;
/*=================================================================================*/
// Input Ports
/*=================================================================================*/
input           clk      ;
input           rst_n    ;
input           SS_n     ;
input           tx_valid ;
input           MOSI     ;
input     [7:0] tx_data  ;
/*=================================================================================*/
// Output Ports
/*=================================================================================*/
output           MISO     ;
output reg       rx_valid ;
output reg [9:0] rx_data  ;
/*=================================================================================*/
// Internals
/*=================================================================================*/
reg [2:0] CS          ;
reg [2:0] NS          ;
reg       read_flag   ;
reg [3:0] counter     ; 
/*=================================================================================*/
// State Transition
/*=================================================================================*/
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        CS <= IDLE_STATE;
    else
        CS <= NS;
end

/*=================================================================================*/
// Next State Logic
/*=================================================================================*/
always @(*) begin
    case (CS)
        IDLE_STATE: begin
            if (!SS_n)
                NS = CMD_CHECK;
            else
                NS = IDLE_STATE;
        end

        CMD_CHECK: begin
            if (SS_n)
                NS = IDLE_STATE;
            else if (MOSI == 0)
                NS = WRITE_MODE;
            else if (MOSI == 1 && !read_flag)
                NS = READ_ADDRESS;
            else
                NS = READ_DATA;
        end

        WRITE_MODE: begin
            if (SS_n)
                NS = IDLE_STATE;
            else
                NS = WRITE_MODE;
        end

        READ_ADDRESS: begin
            if (SS_n)
                NS = IDLE_STATE;
            else
                NS = READ_ADDRESS;
        end

        READ_DATA: begin
            if (SS_n)
                NS = IDLE_STATE;
            else
                NS = READ_DATA;
        end

        default: NS = IDLE_STATE;
            
    endcase
end

/*=================================================================================*/
// Output logic
/*=================================================================================*/
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rx_data   <= 10'b0;
        rx_valid  <= 1'b0;
        counter   <= 4'b0;
        read_flag <= 1'b0;
    end
    else begin
        if (!SS_n) begin
            rx_valid <= 1'b0;
            if (CS == WRITE_MODE || CS == READ_ADDRESS) begin
                rx_data <= {rx_data[8:0], MOSI};
                if (counter == 9) begin
                    rx_valid  <= 1'b1;
                    counter   <= 4'b0;
                    if (CS == READ_ADDRESS)
                        read_flag <= 1'b1;
                end
                else begin
                    counter <= counter + 1;
                end
            end
            else if (CS == READ_DATA) begin
                if (!tx_valid) begin
                    rx_data <= {rx_data[8:0], MOSI};
                    if (counter == 9) begin
                        rx_valid <= 1'b1;
                        counter  <= 4'b0;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end
                else begin
                    if (counter > 7) begin
                        counter   <= 4'b0;
                        read_flag <= 1'b0;
                    end
                    else begin
                        counter <= counter + 1;
                    end
                end
            end
        end
        else begin
            rx_valid <= 1'b0;
        end
    end
end

assign MISO = (tx_valid && CS == READ_DATA) ? tx_data[8 - counter] : 0;

endmodule
