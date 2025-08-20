module SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb();
/*=================================================================================*/
// Internal Signals
/*=================================================================================*/
reg mosi_tb;
reg clk_tb;
reg ss_n_tb;
reg rst_n_tb;

wire miso_tb;

integer i;

/*=================================================================================*/
// DUT Instantiation
/*=================================================================================*/
SPI_SLAVE_WITH_SINGLE_PORT_RAM DUT (.MISO(miso_tb), .MOSI(mosi_tb), .clk(clk_tb), 
                                    .rst_n(rst_n_tb), .SS_n(ss_n_tb));

/*=================================================================================*/
// Clock Generation
/*=================================================================================*/
initial begin
    clk_tb = 0;
    forever #1 clk_tb = ~clk_tb;
end
/*=================================================================================*/
// Stimulus
/*=================================================================================*/
initial begin
/*=================================================================================*/
// Reset 
/*=================================================================================*/
    $readmemh("mem.dat", DUT.RAM1.mem);
    for (i = 0; i < 256; i = i + 1)
        DUT.RAM1.mem[i] <= 8'd0;

    rst_n_tb = 0;
    mosi_tb  = 1;
    ss_n_tb  = 1;
    @(negedge clk_tb);@(negedge clk_tb);

/*=================================================================================*/
// Write Address
/*=================================================================================*/
    rst_n_tb = 1; @(negedge clk_tb); 
    ss_n_tb  = 0; 
    @(negedge clk_tb); @(negedge clk_tb); 

    //00111_11111
    mosi_tb = 0; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);


    ss_n_tb = 1; 
    @(negedge clk_tb); 
    @(negedge clk_tb);

/*=================================================================================*/
// Write Data
/*=================================================================================*/
    ss_n_tb = 0;  
    @(negedge clk_tb); @(negedge clk_tb); 
    //01101_01010
    mosi_tb = 0; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    

    ss_n_tb = 1; 
    @(negedge clk_tb); 
    @(negedge clk_tb);

/*=================================================================================*/
// Read Address
/*=================================================================================*/
    ss_n_tb = 0; 
    @(negedge clk_tb); @(negedge clk_tb); 
    //1010101101
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 0; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb);
 


    ss_n_tb = 1; 
    @(negedge clk_tb); 
    @(negedge clk_tb);

/*=================================================================================*/
// Read Data
/*=================================================================================*/
    ss_n_tb = 0; 
    @(negedge clk_tb); @(negedge clk_tb);

    mosi_tb = 1; @(negedge clk_tb); mosi_tb = 1; @(negedge clk_tb); 

    repeat (16)begin
        @(negedge clk_tb);
    end 
    
    ss_n_tb = 1;
    @(negedge clk_tb);
    @(negedge clk_tb);

    $display("Test Done");
    $finish;
end

endmodule
