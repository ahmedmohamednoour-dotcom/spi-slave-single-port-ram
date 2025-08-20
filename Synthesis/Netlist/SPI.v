// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Aug 20 17:45:50 2025
// Host        : nour running 64-bit major release  (build 9200)
// Command     : write_verilog
//               D:/other/Courses/Kareem_waseem_Digital_Design/Projects/Fantastic_Three_Project_2/Synthesis/Constraint/SPI.v
// Design      : SPI_SLAVE_WITH_SINGLE_PORT_RAM
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SINGLE_PORT_RAM
   (tx_valid,
    MISO_OBUF,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    Q,
    WEA,
    tx_valid_reg_0,
    out,
    \counter_reg[1] ,
    \counter_reg[1]_0 ,
    E,
    rx_valid_reg);
  output tx_valid;
  output MISO_OBUF;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]Q;
  input [0:0]WEA;
  input tx_valid_reg_0;
  input [0:0]out;
  input \counter_reg[1] ;
  input [1:0]\counter_reg[1]_0 ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_OBUF;
  wire MISO_OBUF_inst_i_2_n_0;
  wire MISO_OBUF_inst_i_4_n_0;
  wire [7:0]Q;
  wire [7:0]RAM_OUT;
  wire [7:0]READ;
  wire [0:0]WEA;
  wire [7:0]WRITE;
  wire \counter_reg[1] ;
  wire [1:0]\counter_reg[1]_0 ;
  wire [0:0]out;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire [0:0]rx_valid_reg;
  wire tx_valid;
  wire tx_valid_reg_0;

  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h80888000)) 
    MISO_OBUF_inst_i_1
       (.I0(tx_valid),
        .I1(out),
        .I2(MISO_OBUF_inst_i_2_n_0),
        .I3(\counter_reg[1] ),
        .I4(MISO_OBUF_inst_i_4_n_0),
        .O(MISO_OBUF));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    MISO_OBUF_inst_i_2
       (.I0(RAM_OUT[1]),
        .I1(RAM_OUT[0]),
        .I2(\counter_reg[1]_0 [0]),
        .I3(\counter_reg[1]_0 [1]),
        .I4(RAM_OUT[3]),
        .I5(RAM_OUT[2]),
        .O(MISO_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    MISO_OBUF_inst_i_4
       (.I0(RAM_OUT[5]),
        .I1(RAM_OUT[4]),
        .I2(\counter_reg[1]_0 [0]),
        .I3(\counter_reg[1]_0 [1]),
        .I4(RAM_OUT[7]),
        .I5(RAM_OUT[6]),
        .O(MISO_OBUF_inst_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(READ[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(READ[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(READ[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(READ[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(READ[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(READ[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(READ[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \READ_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(READ[7]),
        .R(rst_n));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(WRITE[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(WRITE[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(WRITE[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(WRITE[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(WRITE[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(WRITE[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(WRITE[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \WRITE_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(WRITE[7]),
        .R(rst_n));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,WRITE,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,READ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(RAM_OUT),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module SPI_SLAVE_WITH_SINGLE_PORT_RAM
   (MISO,
    MOSI,
    clk,
    rst_n,
    SS_n);
  output MISO;
  input MOSI;
  input clk;
  input rst_n;
  input SS_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire [7:0]RAM_IN;
  wire SPI1_n_1;
  wire SPI1_n_14;
  wire SPI1_n_16;
  wire SPI1_n_17;
  wire SPI1_n_2;
  wire SPI1_n_3;
  wire SPI1_n_4;
  wire SPI1_n_5;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire counter;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  SINGLE_PORT_RAM RAM1
       (.CLK(clk_IBUF_BUFG),
        .E(SPI1_n_16),
        .MISO_OBUF(MISO_OBUF),
        .Q(RAM_IN),
        .WEA(mem),
        .\counter_reg[1] (SPI1_n_4),
        .\counter_reg[1]_0 ({SPI1_n_2,SPI1_n_3}),
        .out(counter),
        .rst_n(SPI1_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPI1_n_14),
        .rx_valid_reg(SPI1_n_17),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(SPI1_n_5));
  SPI_Slave SPI1
       (.CLK(clk_IBUF_BUFG),
        .E(SPI1_n_16),
        .MISO(SPI1_n_4),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({SPI1_n_2,SPI1_n_3}),
        .\READ_reg[7] (SPI1_n_17),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .mem_reg(SPI1_n_14),
        .out(counter),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[0]_0 (SPI1_n_1),
        .\rx_data_reg[8]_0 (RAM_IN),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI1_n_5));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule

module SPI_Slave
   (out,
    \rx_data_reg[0]_0 ,
    Q,
    MISO,
    tx_valid_reg,
    \rx_data_reg[8]_0 ,
    mem_reg,
    WEA,
    E,
    \READ_reg[7] ,
    CLK,
    tx_valid,
    MOSI_IBUF,
    SS_n_IBUF,
    rst_n_IBUF);
  output [0:0]out;
  output \rx_data_reg[0]_0 ;
  output [1:0]Q;
  output MISO;
  output tx_valid_reg;
  output [7:0]\rx_data_reg[8]_0 ;
  output mem_reg;
  output [0:0]WEA;
  output [0:0]E;
  output [0:0]\READ_reg[7] ;
  input CLK;
  input tx_valid;
  input MOSI_IBUF;
  input SS_n_IBUF;
  input rst_n_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_CS[0]_i_1_n_0 ;
  wire \FSM_onehot_CS[1]_i_1_n_0 ;
  wire \FSM_onehot_CS[2]_i_1_n_0 ;
  wire \FSM_onehot_CS[3]_i_1_n_0 ;
  wire \FSM_onehot_CS[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CS_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CS_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CS_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_CS_reg_n_0_[3] ;
  wire MISO;
  wire MOSI_IBUF;
  wire [1:0]Q;
  wire [9:8]RAM_IN;
  wire [0:0]\READ_reg[7] ;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire counter1;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter_reg_n_0_[2] ;
  wire mem_reg;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire read_flag__4;
  wire read_flag_i_1_n_0;
  wire read_flag_i_3_n_0;
  wire read_flag_reg_n_0;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data_reg[0]_0 ;
  wire [7:0]\rx_data_reg[8]_0 ;
  wire rx_valid;
  wire rx_valid2_in;
  wire rx_valid_i_1_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0E0)) 
    \FSM_onehot_CS[0]_i_1 
       (.I0(\FSM_onehot_CS_reg_n_0_[3] ),
        .I1(\FSM_onehot_CS_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_CS_reg_n_0_[0] ),
        .I4(out),
        .I5(\FSM_onehot_CS_reg_n_0_[2] ),
        .O(\FSM_onehot_CS[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_CS[1]_i_1 
       (.I0(\FSM_onehot_CS_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_CS[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_onehot_CS[2]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_CS_reg_n_0_[1] ),
        .I2(SS_n_IBUF),
        .I3(\FSM_onehot_CS_reg_n_0_[2] ),
        .O(\FSM_onehot_CS[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0020)) 
    \FSM_onehot_CS[3]_i_1 
       (.I0(MOSI_IBUF),
        .I1(read_flag_reg_n_0),
        .I2(\FSM_onehot_CS_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(\FSM_onehot_CS_reg_n_0_[3] ),
        .O(\FSM_onehot_CS[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0080)) 
    \FSM_onehot_CS[4]_i_1 
       (.I0(MOSI_IBUF),
        .I1(read_flag_reg_n_0),
        .I2(\FSM_onehot_CS_reg_n_0_[1] ),
        .I3(SS_n_IBUF),
        .I4(out),
        .O(\FSM_onehot_CS[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_CS[4]_i_2 
       (.I0(rst_n_IBUF),
        .O(\rx_data_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "CMD_CHECK:00010,WRITE_MODE:00100,READ_ADDRESS:01000,READ_DATA:10000,IDLE_STATE:00001" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_CS_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_CS[0]_i_1_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(\FSM_onehot_CS_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "CMD_CHECK:00010,WRITE_MODE:00100,READ_ADDRESS:01000,READ_DATA:10000,IDLE_STATE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CS_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\FSM_onehot_CS[1]_i_1_n_0 ),
        .Q(\FSM_onehot_CS_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "CMD_CHECK:00010,WRITE_MODE:00100,READ_ADDRESS:01000,READ_DATA:10000,IDLE_STATE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CS_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\FSM_onehot_CS[2]_i_1_n_0 ),
        .Q(\FSM_onehot_CS_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "CMD_CHECK:00010,WRITE_MODE:00100,READ_ADDRESS:01000,READ_DATA:10000,IDLE_STATE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CS_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\FSM_onehot_CS[3]_i_1_n_0 ),
        .Q(\FSM_onehot_CS_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "CMD_CHECK:00010,WRITE_MODE:00100,READ_ADDRESS:01000,READ_DATA:10000,IDLE_STATE:00001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_CS_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\FSM_onehot_CS[4]_i_1_n_0 ),
        .Q(out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    MISO_OBUF_inst_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\counter_reg_n_0_[2] ),
        .O(MISO));
  LUT3 #(
    .INIT(8'h20)) 
    \READ[7]_i_1 
       (.I0(rx_valid),
        .I1(RAM_IN[8]),
        .I2(RAM_IN[9]),
        .O(\READ_reg[7] ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \WRITE[7]_i_1 
       (.I0(rx_valid),
        .I1(RAM_IN[9]),
        .I2(RAM_IN[8]),
        .O(E));
  LUT4 #(
    .INIT(16'h00BF)) 
    \counter[0]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(counter1),
        .I3(Q[0]),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00B0BB0000FFFF00)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(counter1),
        .O(\counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BB0B0B00FF0F0F0)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(counter1),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[3]_i_1 
       (.I0(out),
        .I1(\FSM_onehot_CS_reg_n_0_[2] ),
        .I2(\FSM_onehot_CS_reg_n_0_[3] ),
        .I3(SS_n_IBUF),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0BB0BBBBF0000000)) 
    \counter[3]_i_2 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(tx_valid),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(counter1),
        .O(\counter[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[3]_i_3 
       (.I0(\FSM_onehot_CS_reg_n_0_[2] ),
        .I1(\FSM_onehot_CS_reg_n_0_[3] ),
        .O(\counter[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter[3]_i_2_n_0 ),
        .Q(counter1));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(RAM_IN[8]),
        .I1(RAM_IN[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(RAM_IN[9]),
        .I2(RAM_IN[8]),
        .O(WEA));
  LUT6 #(
    .INIT(64'hFFFFFDFD0000FC00)) 
    read_flag_i_1
       (.I0(read_flag__4),
        .I1(\FSM_onehot_CS_reg_n_0_[3] ),
        .I2(\FSM_onehot_CS_reg_n_0_[2] ),
        .I3(read_flag_i_3_n_0),
        .I4(SS_n_IBUF),
        .I5(read_flag_reg_n_0),
        .O(read_flag_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    read_flag_i_2
       (.I0(out),
        .I1(counter1),
        .I2(tx_valid),
        .O(read_flag__4));
  LUT5 #(
    .INIT(32'h00400000)) 
    read_flag_i_3
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\FSM_onehot_CS_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(counter1),
        .O(read_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_flag_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(read_flag_i_1_n_0),
        .Q(read_flag_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FFF2)) 
    \rx_data[9]_i_1 
       (.I0(out),
        .I1(tx_valid),
        .I2(\FSM_onehot_CS_reg_n_0_[2] ),
        .I3(\FSM_onehot_CS_reg_n_0_[3] ),
        .I4(SS_n_IBUF),
        .O(\rx_data[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(\rx_data_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [0]),
        .Q(\rx_data_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [1]),
        .Q(\rx_data_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [2]),
        .Q(\rx_data_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [3]),
        .Q(\rx_data_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [4]),
        .Q(\rx_data_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [5]),
        .Q(\rx_data_reg[8]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [6]),
        .Q(\rx_data_reg[8]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\rx_data_reg[8]_0 [7]),
        .Q(RAM_IN[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(RAM_IN[8]),
        .Q(RAM_IN[9]));
  LUT6 #(
    .INIT(64'h00000000AAAAAA20)) 
    rx_valid_i_1
       (.I0(rx_valid2_in),
        .I1(tx_valid),
        .I2(out),
        .I3(\FSM_onehot_CS_reg_n_0_[3] ),
        .I4(\FSM_onehot_CS_reg_n_0_[2] ),
        .I5(SS_n_IBUF),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rx_valid_i_2
       (.I0(Q[1]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(counter1),
        .O(rx_valid2_in));
  FDCE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2220000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(RAM_IN[9]),
        .I3(RAM_IN[8]),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
endmodule
