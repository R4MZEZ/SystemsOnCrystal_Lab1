//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Sep 14 16:47:25 2023
//Host        : DESKTOP-EMB8ATT running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (dip_switches_16bits_tri_io,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [7:0]dip_switches_16bits_tri_io;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]dip_switches_16bits_tri_i_0;
  wire [1:1]dip_switches_16bits_tri_i_1;
  wire [2:2]dip_switches_16bits_tri_i_2;
  wire [3:3]dip_switches_16bits_tri_i_3;
  wire [4:4]dip_switches_16bits_tri_i_4;
  wire [5:5]dip_switches_16bits_tri_i_5;
  wire [6:6]dip_switches_16bits_tri_i_6;
  wire [7:7]dip_switches_16bits_tri_i_7;
  wire [0:0]dip_switches_16bits_tri_io_0;
  wire [1:1]dip_switches_16bits_tri_io_1;
  wire [2:2]dip_switches_16bits_tri_io_2;
  wire [3:3]dip_switches_16bits_tri_io_3;
  wire [4:4]dip_switches_16bits_tri_io_4;
  wire [5:5]dip_switches_16bits_tri_io_5;
  wire [6:6]dip_switches_16bits_tri_io_6;
  wire [7:7]dip_switches_16bits_tri_io_7;
  wire [0:0]dip_switches_16bits_tri_o_0;
  wire [1:1]dip_switches_16bits_tri_o_1;
  wire [2:2]dip_switches_16bits_tri_o_2;
  wire [3:3]dip_switches_16bits_tri_o_3;
  wire [4:4]dip_switches_16bits_tri_o_4;
  wire [5:5]dip_switches_16bits_tri_o_5;
  wire [6:6]dip_switches_16bits_tri_o_6;
  wire [7:7]dip_switches_16bits_tri_o_7;
  wire [0:0]dip_switches_16bits_tri_t_0;
  wire [1:1]dip_switches_16bits_tri_t_1;
  wire [2:2]dip_switches_16bits_tri_t_2;
  wire [3:3]dip_switches_16bits_tri_t_3;
  wire [4:4]dip_switches_16bits_tri_t_4;
  wire [5:5]dip_switches_16bits_tri_t_5;
  wire [6:6]dip_switches_16bits_tri_t_6;
  wire [7:7]dip_switches_16bits_tri_t_7;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.dip_switches_16bits_tri_i({dip_switches_16bits_tri_i_7,dip_switches_16bits_tri_i_6,dip_switches_16bits_tri_i_5,dip_switches_16bits_tri_i_4,dip_switches_16bits_tri_i_3,dip_switches_16bits_tri_i_2,dip_switches_16bits_tri_i_1,dip_switches_16bits_tri_i_0}),
        .dip_switches_16bits_tri_o({dip_switches_16bits_tri_o_7,dip_switches_16bits_tri_o_6,dip_switches_16bits_tri_o_5,dip_switches_16bits_tri_o_4,dip_switches_16bits_tri_o_3,dip_switches_16bits_tri_o_2,dip_switches_16bits_tri_o_1,dip_switches_16bits_tri_o_0}),
        .dip_switches_16bits_tri_t({dip_switches_16bits_tri_t_7,dip_switches_16bits_tri_t_6,dip_switches_16bits_tri_t_5,dip_switches_16bits_tri_t_4,dip_switches_16bits_tri_t_3,dip_switches_16bits_tri_t_2,dip_switches_16bits_tri_t_1,dip_switches_16bits_tri_t_0}),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF dip_switches_16bits_tri_iobuf_0
       (.I(dip_switches_16bits_tri_o_0),
        .IO(dip_switches_16bits_tri_io[0]),
        .O(dip_switches_16bits_tri_i_0),
        .T(dip_switches_16bits_tri_t_0));
  IOBUF dip_switches_16bits_tri_iobuf_1
       (.I(dip_switches_16bits_tri_o_1),
        .IO(dip_switches_16bits_tri_io[1]),
        .O(dip_switches_16bits_tri_i_1),
        .T(dip_switches_16bits_tri_t_1));
  IOBUF dip_switches_16bits_tri_iobuf_2
       (.I(dip_switches_16bits_tri_o_2),
        .IO(dip_switches_16bits_tri_io[2]),
        .O(dip_switches_16bits_tri_i_2),
        .T(dip_switches_16bits_tri_t_2));
  IOBUF dip_switches_16bits_tri_iobuf_3
       (.I(dip_switches_16bits_tri_o_3),
        .IO(dip_switches_16bits_tri_io[3]),
        .O(dip_switches_16bits_tri_i_3),
        .T(dip_switches_16bits_tri_t_3));
  IOBUF dip_switches_16bits_tri_iobuf_4
       (.I(dip_switches_16bits_tri_o_4),
        .IO(dip_switches_16bits_tri_io[4]),
        .O(dip_switches_16bits_tri_i_4),
        .T(dip_switches_16bits_tri_t_4));
  IOBUF dip_switches_16bits_tri_iobuf_5
       (.I(dip_switches_16bits_tri_o_5),
        .IO(dip_switches_16bits_tri_io[5]),
        .O(dip_switches_16bits_tri_i_5),
        .T(dip_switches_16bits_tri_t_5));
  IOBUF dip_switches_16bits_tri_iobuf_6
       (.I(dip_switches_16bits_tri_o_6),
        .IO(dip_switches_16bits_tri_io[6]),
        .O(dip_switches_16bits_tri_i_6),
        .T(dip_switches_16bits_tri_t_6));
  IOBUF dip_switches_16bits_tri_iobuf_7
       (.I(dip_switches_16bits_tri_o_7),
        .IO(dip_switches_16bits_tri_io[7]),
        .O(dip_switches_16bits_tri_i_7),
        .T(dip_switches_16bits_tri_t_7));
endmodule
