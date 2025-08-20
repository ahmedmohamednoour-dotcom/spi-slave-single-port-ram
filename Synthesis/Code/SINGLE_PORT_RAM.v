module SINGLE_PORT_RAM (din,rx_valid,clk,rst_n,dout,tx_valid);
/*===============================================*/
// Input Ports
/*===============================================*/
input  [9:0] din;
input  clk;
input  rst_n;
input  rx_valid;

/*===============================================*/
// Output Ports
/*===============================================*/
output reg [7:0] dout;
output reg tx_valid;

/*===============================================*/
// Parameters
/*===============================================*/
parameter MEM_DEPTH = 256;
parameter WIDTH = 8;

/*===============================================*/
// Internal Registers
/*===============================================*/
reg [WIDTH-1:0] WRITE;
reg [WIDTH-1:0] READ;
reg [7:0] mem [0:MEM_DEPTH-1];


/*===============================================*/
// Sequential Logic
/*===============================================*/
always @(posedge clk) begin
    if (!rst_n) begin
        dout <= 8'd0;
        tx_valid <= 1'b0;
        WRITE <= 0;
		READ <= 0;
    end 
    
    else begin
        if (rx_valid) begin
            case (din[9:8])
                2'b00: begin
                    WRITE <= din[7:0];
                    tx_valid <= 0;
                end

                2'b01: begin
                    mem[WRITE] <= din[7:0];
                    tx_valid <= 0;
                end

                2'b10: begin
                    READ <= din[7:0];
                    tx_valid <= 0;
                end

                2'b11: begin
                    dout <= mem[READ];
                    tx_valid <= 1;
                end
            endcase
        end
    end
end

endmodule
