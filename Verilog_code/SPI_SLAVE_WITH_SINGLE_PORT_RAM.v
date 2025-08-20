module SPI_SLAVE_WITH_SINGLE_PORT_RAM (MISO, MOSI, clk, rst_n, SS_n);
    /*=================================================================================*/
    //Input Ports of SPI_SLAVE_WITH_SINGLE_PORT_RAM
    /*=================================================================================*/
    //Data ports
    input MOSI  ;

    //clock ports
    input clk   ;

    //control ports
    input SS_n  ;
    input rst_n ;

    /*=================================================================================*/
    //Output Ports of SPI_SLAVE_WITH_SINGLE_PORT_RAM
    /*=================================================================================*/
    //Data ports
    output MISO ;

    /*=================================================================================*/
    //Internal Ports of SPI_SLAVE_WITH_SINGLE_PORT_RAM
    /*=================================================================================*/
    //Internal Data ports
    wire [9:0] RAM_IN   ;
    wire [7:0] RAM_OUT  ;

    wire       rx_valid ;
    wire       tx_valid ;

    /*=================================================================================*/
    // Instantiation of Modules
    /*=================================================================================*/
    //SPI Slave
    SPI_Slave       SPI1 (.clk(clk), .rst_n(rst_n), .SS_n(SS_n), .tx_valid(tx_valid), .MOSI(MOSI), 
                          .MISO(MISO), .tx_data(RAM_OUT), .rx_valid(rx_valid), .rx_data(RAM_IN));

    //Single Port RAM
    SINGLE_PORT_RAM RAM1 (.clk(clk), .rst_n(rst_n), .din(RAM_IN), 
                          .rx_valid(rx_valid), .dout(RAM_OUT), .tx_valid(tx_valid)); 

endmodule