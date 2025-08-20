vlib work
vlog SPI_Slave.v SINGLE_PORT_RAM.v SPI_SLAVE_WITH_SINGLE_PORT_RAM.v SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb.v

vsim -voptargs=+acc work.SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb

add wave -position insertpoint \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/ss_n_tb \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/rst_n_tb \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/mosi_tb \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/miso_tb \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/clk_tb

add wave -position insertpoint \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/RAM1/mem \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/RAM1/dout \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/RAM1/din

add wave -position insertpoint \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/SPI1/tx_valid \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/SPI1/tx_data \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/SPI1/rx_valid \
    sim:/SPI_SLAVE_WITH_SINGLE_PORT_RAM_tb/DUT/SPI1/rx_data

run -all
#quit -sim
