-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/02/2022 16:40:18"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	n : OUT std_logic;
	RELOJ : IN std_logic;
	RESET : IN std_logic;
	z : OUT std_logic;
	v : OUT std_logic;
	c : OUT std_logic;
	h : OUT std_logic;
	i : OUT std_logic;
	ACCA_D : OUT std_logic_vector(15 DOWNTO 0);
	ACCB_D : OUT std_logic_vector(15 DOWNTO 0);
	AUX_D : OUT std_logic_vector(15 DOWNTO 0);
	IX_D : OUT std_logic_vector(15 DOWNTO 0);
	IY_D : OUT std_logic_vector(15 DOWNTO 0);
	SP_D : OUT std_logic_vector(15 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- n	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_RELOJ : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_ACCA_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ACCB_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_AUX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IX_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_IY_D : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SP_D : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst33|opres[16]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \n~output_o\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \h~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \ACCA_D[15]~output_o\ : std_logic;
SIGNAL \ACCA_D[14]~output_o\ : std_logic;
SIGNAL \ACCA_D[13]~output_o\ : std_logic;
SIGNAL \ACCA_D[12]~output_o\ : std_logic;
SIGNAL \ACCA_D[11]~output_o\ : std_logic;
SIGNAL \ACCA_D[10]~output_o\ : std_logic;
SIGNAL \ACCA_D[9]~output_o\ : std_logic;
SIGNAL \ACCA_D[8]~output_o\ : std_logic;
SIGNAL \ACCA_D[7]~output_o\ : std_logic;
SIGNAL \ACCA_D[6]~output_o\ : std_logic;
SIGNAL \ACCA_D[5]~output_o\ : std_logic;
SIGNAL \ACCA_D[4]~output_o\ : std_logic;
SIGNAL \ACCA_D[3]~output_o\ : std_logic;
SIGNAL \ACCA_D[2]~output_o\ : std_logic;
SIGNAL \ACCA_D[1]~output_o\ : std_logic;
SIGNAL \ACCA_D[0]~output_o\ : std_logic;
SIGNAL \ACCB_D[15]~output_o\ : std_logic;
SIGNAL \ACCB_D[14]~output_o\ : std_logic;
SIGNAL \ACCB_D[13]~output_o\ : std_logic;
SIGNAL \ACCB_D[12]~output_o\ : std_logic;
SIGNAL \ACCB_D[11]~output_o\ : std_logic;
SIGNAL \ACCB_D[10]~output_o\ : std_logic;
SIGNAL \ACCB_D[9]~output_o\ : std_logic;
SIGNAL \ACCB_D[8]~output_o\ : std_logic;
SIGNAL \ACCB_D[7]~output_o\ : std_logic;
SIGNAL \ACCB_D[6]~output_o\ : std_logic;
SIGNAL \ACCB_D[5]~output_o\ : std_logic;
SIGNAL \ACCB_D[4]~output_o\ : std_logic;
SIGNAL \ACCB_D[3]~output_o\ : std_logic;
SIGNAL \ACCB_D[2]~output_o\ : std_logic;
SIGNAL \ACCB_D[1]~output_o\ : std_logic;
SIGNAL \ACCB_D[0]~output_o\ : std_logic;
SIGNAL \AUX_D[15]~output_o\ : std_logic;
SIGNAL \AUX_D[14]~output_o\ : std_logic;
SIGNAL \AUX_D[13]~output_o\ : std_logic;
SIGNAL \AUX_D[12]~output_o\ : std_logic;
SIGNAL \AUX_D[11]~output_o\ : std_logic;
SIGNAL \AUX_D[10]~output_o\ : std_logic;
SIGNAL \AUX_D[9]~output_o\ : std_logic;
SIGNAL \AUX_D[8]~output_o\ : std_logic;
SIGNAL \AUX_D[7]~output_o\ : std_logic;
SIGNAL \AUX_D[6]~output_o\ : std_logic;
SIGNAL \AUX_D[5]~output_o\ : std_logic;
SIGNAL \AUX_D[4]~output_o\ : std_logic;
SIGNAL \AUX_D[3]~output_o\ : std_logic;
SIGNAL \AUX_D[2]~output_o\ : std_logic;
SIGNAL \AUX_D[1]~output_o\ : std_logic;
SIGNAL \AUX_D[0]~output_o\ : std_logic;
SIGNAL \IX_D[15]~output_o\ : std_logic;
SIGNAL \IX_D[14]~output_o\ : std_logic;
SIGNAL \IX_D[13]~output_o\ : std_logic;
SIGNAL \IX_D[12]~output_o\ : std_logic;
SIGNAL \IX_D[11]~output_o\ : std_logic;
SIGNAL \IX_D[10]~output_o\ : std_logic;
SIGNAL \IX_D[9]~output_o\ : std_logic;
SIGNAL \IX_D[8]~output_o\ : std_logic;
SIGNAL \IX_D[7]~output_o\ : std_logic;
SIGNAL \IX_D[6]~output_o\ : std_logic;
SIGNAL \IX_D[5]~output_o\ : std_logic;
SIGNAL \IX_D[4]~output_o\ : std_logic;
SIGNAL \IX_D[3]~output_o\ : std_logic;
SIGNAL \IX_D[2]~output_o\ : std_logic;
SIGNAL \IX_D[1]~output_o\ : std_logic;
SIGNAL \IX_D[0]~output_o\ : std_logic;
SIGNAL \IY_D[15]~output_o\ : std_logic;
SIGNAL \IY_D[14]~output_o\ : std_logic;
SIGNAL \IY_D[13]~output_o\ : std_logic;
SIGNAL \IY_D[12]~output_o\ : std_logic;
SIGNAL \IY_D[11]~output_o\ : std_logic;
SIGNAL \IY_D[10]~output_o\ : std_logic;
SIGNAL \IY_D[9]~output_o\ : std_logic;
SIGNAL \IY_D[8]~output_o\ : std_logic;
SIGNAL \IY_D[7]~output_o\ : std_logic;
SIGNAL \IY_D[6]~output_o\ : std_logic;
SIGNAL \IY_D[5]~output_o\ : std_logic;
SIGNAL \IY_D[4]~output_o\ : std_logic;
SIGNAL \IY_D[3]~output_o\ : std_logic;
SIGNAL \IY_D[2]~output_o\ : std_logic;
SIGNAL \IY_D[1]~output_o\ : std_logic;
SIGNAL \IY_D[0]~output_o\ : std_logic;
SIGNAL \SP_D[15]~output_o\ : std_logic;
SIGNAL \SP_D[14]~output_o\ : std_logic;
SIGNAL \SP_D[13]~output_o\ : std_logic;
SIGNAL \SP_D[12]~output_o\ : std_logic;
SIGNAL \SP_D[11]~output_o\ : std_logic;
SIGNAL \SP_D[10]~output_o\ : std_logic;
SIGNAL \SP_D[9]~output_o\ : std_logic;
SIGNAL \SP_D[8]~output_o\ : std_logic;
SIGNAL \SP_D[7]~output_o\ : std_logic;
SIGNAL \SP_D[6]~output_o\ : std_logic;
SIGNAL \SP_D[5]~output_o\ : std_logic;
SIGNAL \SP_D[4]~output_o\ : std_logic;
SIGNAL \SP_D[3]~output_o\ : std_logic;
SIGNAL \SP_D[2]~output_o\ : std_logic;
SIGNAL \SP_D[1]~output_o\ : std_logic;
SIGNAL \SP_D[0]~output_o\ : std_logic;
SIGNAL \RELOJ~input_o\ : std_logic;
SIGNAL \RELOJ~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst34|valor_interno[0]~15_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst34|valor_interno[1]~5_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~6\ : std_logic;
SIGNAL \inst34|valor_interno[2]~7_combout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~8\ : std_logic;
SIGNAL \inst34|valor_interno[3]~9_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~10\ : std_logic;
SIGNAL \inst34|valor_interno[4]~11_combout\ : std_logic;
SIGNAL \inst34|valor_interno[4]~12\ : std_logic;
SIGNAL \inst34|valor_interno[5]~13_combout\ : std_logic;
SIGNAL \inst1|mem~0_combout\ : std_logic;
SIGNAL \inst1|mem~6_combout\ : std_logic;
SIGNAL \inst1|mem~7_combout\ : std_logic;
SIGNAL \inst1|mem~8_combout\ : std_logic;
SIGNAL \inst1|mem~5_combout\ : std_logic;
SIGNAL \inst1|mem~2_combout\ : std_logic;
SIGNAL \inst1|mem~1_combout\ : std_logic;
SIGNAL \inst1|mem~3_combout\ : std_logic;
SIGNAL \inst1|mem~4_combout\ : std_logic;
SIGNAL \inst19|Equal2~0_combout\ : std_logic;
SIGNAL \inst19|Equal2~1_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst19|WideNor0~combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst19|Equal0~2_combout\ : std_logic;
SIGNAL \inst107|selregw[2]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|selregwo[0]~0_combout\ : std_logic;
SIGNAL \inst12|Equal12~0_combout\ : std_logic;
SIGNAL \inst20|Mux16~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst12|Equal12~1_combout\ : std_logic;
SIGNAL \inst19|WideNor0~2_combout\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst33|opres[14]~30_combout\ : std_logic;
SIGNAL \inst33|opres[16]~0_combout\ : std_logic;
SIGNAL \inst33|opres[16]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst1|mem~9_combout\ : std_logic;
SIGNAL \inst1|mem~10_combout\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst33|opres[12]~26_combout\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst33|opres[10]~22_combout\ : std_logic;
SIGNAL \inst1|mem~11_combout\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst33|opres[8]~18_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst33|opres[4]~10_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst1|mem~12_combout\ : std_logic;
SIGNAL \inst1|mem~13_combout\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst33|opres[2]~6_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~32_combout\ : std_logic;
SIGNAL \inst33|opres[0]~33_combout\ : std_logic;
SIGNAL \inst20|Mux31~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~5_combout\ : std_logic;
SIGNAL \inst20|Mux30~0_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres[2]~7_combout\ : std_logic;
SIGNAL \inst20|Mux29~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~9_combout\ : std_logic;
SIGNAL \inst20|Mux28~0_combout\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~11_combout\ : std_logic;
SIGNAL \inst20|Mux27~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux27~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~13_combout\ : std_logic;
SIGNAL \inst20|Mux26~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~15_combout\ : std_logic;
SIGNAL \inst20|Mux25~0_combout\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~17_combout\ : std_logic;
SIGNAL \inst20|Mux24~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~19_combout\ : std_logic;
SIGNAL \inst20|Mux23~0_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~21_combout\ : std_logic;
SIGNAL \inst20|Mux22~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres[10]~23_combout\ : std_logic;
SIGNAL \inst20|Mux21~0_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~25_combout\ : std_logic;
SIGNAL \inst20|Mux20~0_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~27_combout\ : std_logic;
SIGNAL \inst20|Mux19~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~29_combout\ : std_logic;
SIGNAL \inst20|Mux18~0_combout\ : std_logic;
SIGNAL \inst24|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~31_combout\ : std_logic;
SIGNAL \inst20|Mux17~0_combout\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~34_combout\ : std_logic;
SIGNAL \inst|ci~q\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst33|opres[15]~3_combout\ : std_logic;
SIGNAL \inst|ni~q\ : std_logic;
SIGNAL \inst101|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst33|WideOr0~3_combout\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~4_combout\ : std_logic;
SIGNAL \inst|zi~q\ : std_logic;
SIGNAL \inst102|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~q\ : std_logic;
SIGNAL \inst103|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|hi~0_combout\ : std_logic;
SIGNAL \inst|hi~feeder_combout\ : std_logic;
SIGNAL \inst|hi~q\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst12|Equal12~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RELOJ~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

n <= ww_n;
ww_RELOJ <= RELOJ;
ww_RESET <= RESET;
z <= ww_z;
v <= ww_v;
c <= ww_c;
h <= ww_h;
i <= ww_i;
ACCA_D <= ww_ACCA_D;
ACCB_D <= ww_ACCB_D;
AUX_D <= ww_AUX_D;
IX_D <= ww_IX_D;
IY_D <= ww_IY_D;
SP_D <= ww_SP_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst33|opres[16]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|opres[16]~0_combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y23_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X17_Y25_N30
\n~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X22_Y25_N2
\v~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\c~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\h~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\ACCA_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

-- Location: IOOBUF_X10_Y20_N16
\ACCA_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\ACCA_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\ACCA_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\ACCA_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\ACCA_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

-- Location: IOOBUF_X17_Y25_N23
\ACCA_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\ACCA_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\ACCA_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X15_Y25_N30
\ACCA_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\ACCA_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\ACCA_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X19_Y25_N16
\ACCA_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\ACCA_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\ACCA_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\ACCA_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\ACCB_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

-- Location: IOOBUF_X19_Y25_N30
\ACCB_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\ACCB_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

-- Location: IOOBUF_X17_Y25_N9
\ACCB_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\ACCB_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\ACCB_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\ACCB_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\ACCB_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

-- Location: IOOBUF_X19_Y25_N2
\ACCB_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\ACCB_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X10_Y18_N2
\ACCB_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\ACCB_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\ACCB_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\ACCB_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\ACCB_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X15_Y25_N9
\ACCB_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\AUX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\AUX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\AUX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\AUX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\AUX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\AUX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X13_Y25_N16
\AUX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\AUX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X17_Y25_N16
\AUX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\AUX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X11_Y25_N16
\AUX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X17_Y25_N2
\AUX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X11_Y25_N30
\AUX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\AUX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\AUX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\AUX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\IX_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\IX_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\IX_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

-- Location: IOOBUF_X31_Y15_N2
\IX_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\IX_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\IX_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\IX_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\IX_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\IX_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\IX_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

-- Location: IOOBUF_X31_Y14_N16
\IX_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\IX_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\IX_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\IX_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

-- Location: IOOBUF_X29_Y25_N23
\IX_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\IX_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

-- Location: IOOBUF_X15_Y0_N2
\IY_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

-- Location: IOOBUF_X27_Y25_N16
\IY_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\IY_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

-- Location: IOOBUF_X31_Y2_N2
\IY_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\IY_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\IY_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\IY_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

-- Location: IOOBUF_X31_Y1_N23
\IY_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

-- Location: IOOBUF_X1_Y10_N16
\IY_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\IY_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\IY_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\IY_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\IY_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

-- Location: IOOBUF_X31_Y1_N16
\IY_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\IY_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\IY_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\SP_D[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\SP_D[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\SP_D[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\SP_D[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\SP_D[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\SP_D[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\SP_D[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\SP_D[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\SP_D[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

-- Location: IOOBUF_X29_Y25_N30
\SP_D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\SP_D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\SP_D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

-- Location: IOOBUF_X29_Y25_N16
\SP_D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

-- Location: IOOBUF_X31_Y1_N9
\SP_D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

-- Location: IOOBUF_X15_Y0_N30
\SP_D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\SP_D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\RELOJ~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G3
\RELOJ~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RELOJ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RELOJ~inputclkctrl_outclk\);

-- Location: LCCOMB_X16_Y15_N4
\inst34|valor_interno[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~15_combout\ = !\inst34|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|valor_interno\(0),
	combout => \inst34|valor_interno[0]~15_combout\);

-- Location: IOIBUF_X0_Y6_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G1
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X16_Y15_N5
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[0]~15_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LCCOMB_X16_Y15_N6
\inst34|valor_interno[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~5_combout\ = (\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) $ (VCC))) # (!\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) & VCC))
-- \inst34|valor_interno[1]~6\ = CARRY((\inst34|valor_interno\(1) & \inst34|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datad => VCC,
	combout => \inst34|valor_interno[1]~5_combout\,
	cout => \inst34|valor_interno[1]~6\);

-- Location: FF_X16_Y15_N7
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[1]~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LCCOMB_X16_Y15_N8
\inst34|valor_interno[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[2]~7_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno[1]~6\)) # (!\inst34|valor_interno\(2) & ((\inst34|valor_interno[1]~6\) # (GND)))
-- \inst34|valor_interno[2]~8\ = CARRY((!\inst34|valor_interno[1]~6\) # (!\inst34|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(2),
	datad => VCC,
	cin => \inst34|valor_interno[1]~6\,
	combout => \inst34|valor_interno[2]~7_combout\,
	cout => \inst34|valor_interno[2]~8\);

-- Location: FF_X16_Y15_N9
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[2]~7_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: LCCOMB_X16_Y15_N10
\inst34|valor_interno[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~9_combout\ = (\inst34|valor_interno\(3) & (\inst34|valor_interno[2]~8\ $ (GND))) # (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[2]~8\ & VCC))
-- \inst34|valor_interno[3]~10\ = CARRY((\inst34|valor_interno\(3) & !\inst34|valor_interno[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datad => VCC,
	cin => \inst34|valor_interno[2]~8\,
	combout => \inst34|valor_interno[3]~9_combout\,
	cout => \inst34|valor_interno[3]~10\);

-- Location: FF_X16_Y15_N11
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[3]~9_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: LCCOMB_X16_Y15_N12
\inst34|valor_interno[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[4]~11_combout\ = (\inst34|valor_interno\(4) & (!\inst34|valor_interno[3]~10\)) # (!\inst34|valor_interno\(4) & ((\inst34|valor_interno[3]~10\) # (GND)))
-- \inst34|valor_interno[4]~12\ = CARRY((!\inst34|valor_interno[3]~10\) # (!\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datad => VCC,
	cin => \inst34|valor_interno[3]~10\,
	combout => \inst34|valor_interno[4]~11_combout\,
	cout => \inst34|valor_interno[4]~12\);

-- Location: FF_X16_Y15_N13
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[4]~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LCCOMB_X16_Y15_N14
\inst34|valor_interno[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~13_combout\ = \inst34|valor_interno\(5) $ (!\inst34|valor_interno[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	cin => \inst34|valor_interno[4]~12\,
	combout => \inst34|valor_interno[5]~13_combout\);

-- Location: FF_X16_Y15_N15
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst34|valor_interno[5]~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LCCOMB_X16_Y15_N30
\inst1|mem~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~0_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(2) & !\inst34|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datab => \inst34|valor_interno\(5),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|mem~0_combout\);

-- Location: LCCOMB_X15_Y15_N8
\inst1|mem~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~6_combout\ = (!\inst34|valor_interno\(0) & (\inst1|mem~0_combout\ & \inst34|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(0),
	datac => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~6_combout\);

-- Location: FF_X15_Y15_N9
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LCCOMB_X16_Y15_N18
\inst1|mem~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~7_combout\ = (\inst34|valor_interno\(2)) # ((\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(1) & !\inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(3),
	combout => \inst1|mem~7_combout\);

-- Location: LCCOMB_X15_Y15_N26
\inst1|mem~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~8_combout\ = (!\inst34|valor_interno\(5) & (!\inst34|valor_interno\(4) & !\inst1|mem~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datac => \inst34|valor_interno\(4),
	datad => \inst1|mem~7_combout\,
	combout => \inst1|mem~8_combout\);

-- Location: FF_X15_Y15_N27
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~8_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LCCOMB_X15_Y15_N18
\inst1|mem~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~5_combout\ = (\inst1|mem~0_combout\ & \inst34|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~5_combout\);

-- Location: FF_X15_Y15_N19
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~5_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LCCOMB_X15_Y15_N22
\inst1|mem~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~2_combout\ = (\inst1|mem~0_combout\ & !\inst34|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~2_combout\);

-- Location: FF_X15_Y15_N23
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: LCCOMB_X15_Y15_N16
\inst1|mem~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~1_combout\ = (\inst34|valor_interno\(0) & (\inst1|mem~0_combout\ & \inst34|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(0),
	datac => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~1_combout\);

-- Location: FF_X15_Y15_N17
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: FF_X15_Y15_N31
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst1|mem~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: LCCOMB_X16_Y15_N20
\inst1|mem~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~3_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(2)) # (\inst34|valor_interno\(0) $ (\inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~3_combout\);

-- Location: LCCOMB_X16_Y15_N16
\inst1|mem~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~4_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst1|mem~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~3_combout\,
	combout => \inst1|mem~4_combout\);

-- Location: FF_X16_Y15_N17
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LCCOMB_X15_Y15_N12
\inst19|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal2~0_combout\ = (!\inst8|valor_interno\(23) & (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(23),
	datab => \inst8|valor_interno\(21),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(22),
	combout => \inst19|Equal2~0_combout\);

-- Location: LCCOMB_X15_Y15_N4
\inst19|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal2~1_combout\ = (!\inst8|valor_interno\(18) & (\inst8|valor_interno\(20) & (\inst8|valor_interno\(16) & \inst19|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(18),
	datab => \inst8|valor_interno\(20),
	datac => \inst8|valor_interno\(16),
	datad => \inst19|Equal2~0_combout\,
	combout => \inst19|Equal2~1_combout\);

-- Location: LCCOMB_X15_Y15_N28
\inst19|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = (\inst8|valor_interno\(23) & (!\inst8|valor_interno\(21) & (\inst8|valor_interno\(17) & !\inst8|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(23),
	datab => \inst8|valor_interno\(21),
	datac => \inst8|valor_interno\(17),
	datad => \inst8|valor_interno\(20),
	combout => \inst19|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y17_N22
\inst19|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|WideNor0~combout\ = (\inst19|Equal2~1_combout\) # ((!\inst8|valor_interno\(16) & (\inst8|valor_interno\(18) & \inst19|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(18),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst19|Equal0~0_combout\,
	combout => \inst19|WideNor0~combout\);

-- Location: FF_X13_Y17_N23
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst19|WideNor0~combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: FF_X13_Y18_N31
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst19|Equal2~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: LCCOMB_X15_Y15_N24
\inst19|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~2_combout\ = (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(22) & (\inst8|valor_interno\(18) & \inst19|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(22),
	datac => \inst8|valor_interno\(18),
	datad => \inst19|Equal0~0_combout\,
	combout => \inst19|Equal0~2_combout\);

-- Location: FF_X15_Y15_N25
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst19|Equal0~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: LCCOMB_X15_Y17_N4
\inst107|selregw[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst107|selregw[2]~feeder_combout\ = \inst16|selregw\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|selregw\(2),
	combout => \inst107|selregw[2]~feeder_combout\);

-- Location: FF_X15_Y17_N5
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst107|selregw[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LCCOMB_X13_Y17_N30
\inst19|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (\inst8|valor_interno\(18) & !\inst8|valor_interno\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|valor_interno\(18),
	datad => \inst8|valor_interno\(16),
	combout => \inst19|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y17_N30
\inst9|selregwo[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|selregwo[0]~0_combout\ = (\inst19|Equal0~1_combout\ & ((\inst19|Equal0~0_combout\ & (!\inst8|valor_interno\(22))) # (!\inst19|Equal0~0_combout\ & ((\inst19|Equal2~1_combout\))))) # (!\inst19|Equal0~1_combout\ & (((\inst19|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst19|Equal2~1_combout\,
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Equal0~0_combout\,
	combout => \inst9|selregwo[0]~0_combout\);

-- Location: FF_X16_Y17_N31
\inst16|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst9|selregwo[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(0));

-- Location: FF_X15_Y17_N29
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst16|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LCCOMB_X15_Y17_N2
\inst12|Equal12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Equal12~0_combout\ = (!\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst12|Equal12~0_combout\);

-- Location: LCCOMB_X14_Y19_N24
\inst20|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux16~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(15),
	combout => \inst20|Mux16~0_combout\);

-- Location: LCCOMB_X14_Y19_N10
\inst24|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[15]~feeder_combout\ = \inst20|Mux16~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux16~0_combout\,
	combout => \inst24|valor_interno[15]~feeder_combout\);

-- Location: FF_X14_Y19_N11
\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

-- Location: FF_X14_Y16_N23
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LCCOMB_X13_Y19_N16
\inst202|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (\inst700666|ACCA|valor_interno\(15) & \inst19|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCA|valor_interno\(15),
	datad => \inst19|Equal2~1_combout\,
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X13_Y19_N17
\inst700|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux0~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(15));

-- Location: LCCOMB_X14_Y19_N28
\muxSel1|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[15]~0_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux16~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(15))))) # (!\inst19|Equal2~1_combout\ & 
-- (((\inst700|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst12|Equal12~0_combout\,
	datac => \inst700|valor_interno\(15),
	datad => \inst20|Mux16~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X15_Y17_N16
\inst12|Equal12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Equal12~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst12|Equal12~1_combout\);

-- Location: FF_X13_Y17_N13
\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: LCCOMB_X15_Y15_N30
\inst19|WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|WideNor0~2_combout\ = (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(18) & \inst19|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(18),
	datad => \inst19|Equal0~0_combout\,
	combout => \inst19|WideNor0~2_combout\);

-- Location: LCCOMB_X13_Y17_N18
\inst202|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = (\inst700666|ACCB|valor_interno\(15) & (\inst19|Equal2~1_combout\ & !\inst19|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(15),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst19|WideNor0~2_combout\,
	combout => \inst202|Mux16~0_combout\);

-- Location: FF_X13_Y17_N19
\inst14|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux16~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: LCCOMB_X14_Y19_N12
\muxSel2|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[15]~0_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux16~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(15))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst14|valor_interno\(15),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux16~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: FF_X14_Y18_N15
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst19|WideNor0~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LCCOMB_X15_Y18_N24
\inst700666|ACCA|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|ACCA|valor_interno[14]~feeder_combout\);

-- Location: FF_X15_Y18_N25
\inst700666|ACCA|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: LCCOMB_X15_Y18_N16
\inst202|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(14),
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X15_Y18_N17
\inst700|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux1~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(14));

-- Location: LCCOMB_X15_Y18_N30
\muxSel1|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[14]~1_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux17~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(14))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst700|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst700|valor_interno\(14),
	datac => \inst12|Equal12~0_combout\,
	datad => \inst20|Mux17~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X15_Y18_N2
\inst33|opres[14]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~30_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[14]~1_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & ((\muxSel2|$00000|auto_generated|result_node[14]~1_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(0),
	datac => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[14]~1_combout\,
	combout => \inst33|opres[14]~30_combout\);

-- Location: LCCOMB_X14_Y18_N14
\inst33|opres[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~0_combout\ = (\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(1),
	combout => \inst33|opres[16]~0_combout\);

-- Location: CLKCTRL_G6
\inst33|opres[16]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|opres[16]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|opres[16]~0clkctrl_outclk\);

-- Location: FF_X15_Y16_N21
\inst700666|ACCB|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: LCCOMB_X15_Y16_N12
\inst202|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = (\inst19|Equal2~1_combout\ & (!\inst19|WideNor0~2_combout\ & \inst700666|ACCB|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datac => \inst19|WideNor0~2_combout\,
	datad => \inst700666|ACCB|valor_interno\(13),
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X15_Y16_N13
\inst14|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(13));

-- Location: LCCOMB_X15_Y16_N2
\muxSel2|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[13]~2_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux18~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(13))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(13),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux18~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: FF_X15_Y17_N7
\inst700666|ACCB|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: LCCOMB_X16_Y15_N2
\inst1|mem~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~9_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(2)) # ((\inst34|valor_interno\(0) & !\inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~9_combout\);

-- Location: LCCOMB_X16_Y15_N28
\inst1|mem~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~10_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst1|mem~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~9_combout\,
	combout => \inst1|mem~10_combout\);

-- Location: FF_X16_Y15_N29
\inst8|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~10_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(12));

-- Location: LCCOMB_X14_Y15_N8
\inst202|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = (\inst19|WideNor0~2_combout\ & (((\inst8|valor_interno\(12))))) # (!\inst19|WideNor0~2_combout\ & (\inst19|Equal2~1_combout\ & (\inst700666|ACCB|valor_interno\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst19|WideNor0~2_combout\,
	datac => \inst700666|ACCB|valor_interno\(12),
	datad => \inst8|valor_interno\(12),
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X14_Y15_N9
\inst14|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux19~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(12));

-- Location: LCCOMB_X14_Y15_N0
\muxSel2|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[12]~3_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux19~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(12))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst14|valor_interno\(12),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux19~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst33|opres[12]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~26_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel2|$00000|auto_generated|result_node[12]~3_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst33|opres[12]~26_combout\);

-- Location: FF_X13_Y16_N31
\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: LCCOMB_X13_Y16_N26
\inst202|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = (\inst700666|ACCB|valor_interno\(11) & (\inst19|Equal2~1_combout\ & !\inst19|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(11),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst19|WideNor0~2_combout\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X13_Y16_N27
\inst14|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux20~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(11));

-- Location: LCCOMB_X13_Y16_N4
\muxSel2|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[11]~4_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux20~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(11))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(11),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux20~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: FF_X13_Y16_N23
\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst20|Mux21~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

-- Location: FF_X15_Y17_N1
\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LCCOMB_X13_Y16_N14
\inst202|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = (\inst19|Equal2~1_combout\ & (!\inst19|WideNor0~2_combout\ & \inst700666|ACCB|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datac => \inst19|WideNor0~2_combout\,
	datad => \inst700666|ACCB|valor_interno\(10),
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X13_Y16_N15
\inst14|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux21~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(10));

-- Location: LCCOMB_X13_Y16_N18
\muxSel2|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[10]~5_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & (\inst20|Mux21~0_combout\)) # (!\inst12|Equal12~1_combout\ & ((\inst14|valor_interno\(10)))))) # (!\inst19|Equal2~1_combout\ & 
-- (((\inst14|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux21~0_combout\,
	datab => \inst14|valor_interno\(10),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst12|Equal12~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X13_Y16_N16
\inst33|opres[10]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~22_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel2|$00000|auto_generated|result_node[10]~5_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst33|opres[10]~22_combout\);

-- Location: FF_X15_Y16_N7
\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(9),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: LCCOMB_X16_Y15_N26
\inst1|mem~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~11_combout\ = (!\inst34|valor_interno\(0) & (\inst1|mem~0_combout\ & !\inst34|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(0),
	datac => \inst1|mem~0_combout\,
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~11_combout\);

-- Location: FF_X16_Y15_N27
\inst8|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~11_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(9));

-- Location: LCCOMB_X16_Y16_N8
\inst202|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = (\inst19|WideNor0~2_combout\ & (((\inst8|valor_interno\(9))))) # (!\inst19|WideNor0~2_combout\ & (\inst19|Equal2~1_combout\ & (\inst700666|ACCB|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(9),
	datac => \inst8|valor_interno\(9),
	datad => \inst19|WideNor0~2_combout\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X16_Y16_N9
\inst14|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux22~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(9));

-- Location: LCCOMB_X15_Y16_N10
\muxSel2|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[9]~6_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux22~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(9))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst14|valor_interno\(9),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux22~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X16_Y17_N4
\inst700666|ACCB|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCB|valor_interno[8]~feeder_combout\);

-- Location: FF_X16_Y17_N5
\inst700666|ACCB|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: LCCOMB_X15_Y15_N10
\inst202|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = (!\inst19|WideNor0~2_combout\ & (\inst19|Equal2~1_combout\ & \inst700666|ACCB|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|WideNor0~2_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(8),
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X15_Y15_N11
\inst14|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux23~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: LCCOMB_X15_Y15_N0
\muxSel2|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[8]~7_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux23~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(8))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(8),
	datab => \inst19|Equal2~1_combout\,
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux23~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X15_Y15_N14
\inst33|opres[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~18_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel1|$00000|auto_generated|result_node[8]~7_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	datac => \inst16|selfalgs\(1),
	datad => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst33|opres[8]~18_combout\);

-- Location: LCCOMB_X16_Y18_N22
\inst700666|ACCB|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|ACCB|valor_interno[7]~feeder_combout\);

-- Location: FF_X16_Y18_N23
\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: LCCOMB_X14_Y18_N24
\inst202|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = (\inst19|Equal2~1_combout\ & (!\inst19|WideNor0~2_combout\ & \inst700666|ACCB|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datac => \inst19|WideNor0~2_combout\,
	datad => \inst700666|ACCB|valor_interno\(7),
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X14_Y18_N25
\inst14|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux24~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(7));

-- Location: LCCOMB_X14_Y17_N8
\muxSel2|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[7]~8_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & (\inst20|Mux24~0_combout\)) # (!\inst19|Equal2~1_combout\ & ((\inst14|valor_interno\(7)))))) # (!\inst12|Equal12~1_combout\ & 
-- (((\inst14|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux24~0_combout\,
	datab => \inst12|Equal12~1_combout\,
	datac => \inst14|valor_interno\(7),
	datad => \inst19|Equal2~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X15_Y19_N28
\inst700666|ACCA|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|ACCA|valor_interno[6]~feeder_combout\);

-- Location: FF_X15_Y19_N29
\inst700666|ACCA|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: LCCOMB_X14_Y19_N14
\inst202|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(6),
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X14_Y19_N15
\inst700|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux9~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(6));

-- Location: LCCOMB_X14_Y19_N26
\muxSel1|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[6]~9_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux25~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(6))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(6),
	datac => \inst20|Mux25~0_combout\,
	datad => \inst19|Equal2~1_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: FF_X15_Y16_N19
\inst700666|ACCB|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LCCOMB_X15_Y16_N30
\inst202|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = (\inst19|Equal2~1_combout\ & ((\inst700666|ACCB|valor_interno\(5)) # ((\inst19|WideNor0~2_combout\ & \inst8|valor_interno\(9))))) # (!\inst19|Equal2~1_combout\ & (((\inst19|WideNor0~2_combout\ & \inst8|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst700666|ACCB|valor_interno\(5),
	datac => \inst19|WideNor0~2_combout\,
	datad => \inst8|valor_interno\(9),
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X15_Y16_N31
\inst14|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux26~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(5));

-- Location: LCCOMB_X15_Y16_N0
\muxSel2|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[5]~10_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux26~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(5))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(5),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux26~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X15_Y19_N22
\inst700666|ACCA|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(4),
	combout => \inst700666|ACCA|valor_interno[4]~feeder_combout\);

-- Location: FF_X15_Y19_N23
\inst700666|ACCA|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: LCCOMB_X15_Y15_N20
\inst202|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(4),
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X15_Y15_N21
\inst700|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux11~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(4));

-- Location: LCCOMB_X15_Y15_N2
\muxSel1|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[4]~11_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux27~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(4))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(4),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux27~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X14_Y15_N20
\inst33|opres[4]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~10_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel2|$00000|auto_generated|result_node[4]~11_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	combout => \inst33|opres[4]~10_combout\);

-- Location: FF_X14_Y17_N23
\inst700666|ACCA|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: LCCOMB_X16_Y17_N20
\inst202|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(3),
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X16_Y17_N21
\inst700|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux12~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(3));

-- Location: LCCOMB_X15_Y17_N18
\muxSel1|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[3]~12_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux28~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(3))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst700|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(3),
	datab => \inst19|Equal2~1_combout\,
	datac => \inst20|Mux28~0_combout\,
	datad => \inst12|Equal12~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst1|mem~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~12_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(2)) # ((\inst34|valor_interno\(0) & \inst34|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~12_combout\);

-- Location: LCCOMB_X16_Y15_N24
\inst1|mem~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~13_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst1|mem~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~12_combout\,
	combout => \inst1|mem~13_combout\);

-- Location: FF_X16_Y15_N25
\inst8|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(2));

-- Location: FF_X13_Y17_N29
\inst700666|ACCB|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LCCOMB_X13_Y17_N0
\inst202|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = (\inst8|valor_interno\(2) & ((\inst19|WideNor0~2_combout\) # ((\inst700666|ACCB|valor_interno\(2) & \inst19|Equal2~1_combout\)))) # (!\inst8|valor_interno\(2) & (\inst700666|ACCB|valor_interno\(2) & 
-- (\inst19|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(2),
	datab => \inst700666|ACCB|valor_interno\(2),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst19|WideNor0~2_combout\,
	combout => \inst202|Mux29~0_combout\);

-- Location: FF_X13_Y17_N1
\inst14|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux29~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(2));

-- Location: LCCOMB_X13_Y17_N6
\muxSel2|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[2]~13_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux29~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(2))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(2),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux29~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X13_Y17_N24
\inst33|opres[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~6_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel2|$00000|auto_generated|result_node[2]~13_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst33|opres[2]~6_combout\);

-- Location: LCCOMB_X16_Y17_N18
\inst700666|ACCB|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|ACCB|valor_interno[1]~feeder_combout\);

-- Location: FF_X16_Y17_N19
\inst700666|ACCB|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LCCOMB_X16_Y17_N14
\inst202|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = (!\inst19|WideNor0~2_combout\ & (\inst19|Equal2~1_combout\ & \inst700666|ACCB|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|WideNor0~2_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(1),
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X16_Y17_N15
\inst14|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux30~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(1));

-- Location: LCCOMB_X15_Y17_N22
\muxSel2|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[1]~14_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux30~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(1))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(1),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux30~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X16_Y17_N1
\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LCCOMB_X15_Y18_N10
\inst202|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCB|valor_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datac => \inst700666|ACCB|valor_interno\(0),
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X15_Y18_N11
\inst14|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux31~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(0));

-- Location: LCCOMB_X15_Y18_N4
\muxSel2|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[0]~15_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux31~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(0))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(0),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst20|Mux31~0_combout\,
	datad => \inst19|Equal2~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst33|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~1_cout\ = CARRY((!\inst16|selc~q\ & \inst|ci~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datab => \inst|ci~q\,
	datad => VCC,
	cout => \inst33|Add0~1_cout\);

-- Location: LCCOMB_X14_Y17_N16
\inst33|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & (\inst33|Add0~1_cout\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (!\inst33|Add0~1_cout\)))) # (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst33|Add0~1_cout\)) # (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & 
-- ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & !\inst33|Add0~1_cout\)) # (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & 
-- ((!\inst33|Add0~1_cout\) # (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

-- Location: LCCOMB_X15_Y18_N28
\inst33|opres[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~32_combout\ = (\inst16|selfalgs\(1) & ((\inst16|selfalgs\(0)) # ((\inst33|Add0~2_combout\)))) # (!\inst16|selfalgs\(1) & (!\inst16|selfalgs\(0) & (\muxSel1|$00000|auto_generated|result_node[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(0),
	datac => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datad => \inst33|Add0~2_combout\,
	combout => \inst33|opres[0]~32_combout\);

-- Location: LCCOMB_X15_Y18_N26
\inst33|opres[0]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~33_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\) # (!\inst33|opres[0]~32_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel1|$00000|auto_generated|result_node[0]~15_combout\))))) # (!\inst16|selfalgs\(0) & (\inst33|opres[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst33|opres[0]~32_combout\,
	datac => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \inst33|opres[0]~33_combout\);

-- Location: LCCOMB_X14_Y18_N20
\inst33|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[0]~33_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~33_combout\,
	datab => \inst33|opres\(0),
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(0));

-- Location: LCCOMB_X14_Y18_N6
\inst20|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux31~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(0),
	combout => \inst20|Mux31~0_combout\);

-- Location: FF_X14_Y18_N7
\inst24|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux31~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(0));

-- Location: LCCOMB_X15_Y18_N18
\inst700666|ACCA|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|ACCA|valor_interno[0]~feeder_combout\);

-- Location: FF_X15_Y18_N19
\inst700666|ACCA|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: LCCOMB_X15_Y18_N22
\inst202|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(0),
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X15_Y18_N23
\inst700|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux15~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(0));

-- Location: LCCOMB_X15_Y18_N0
\muxSel1|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[0]~15_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux31~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(0))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(0),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst20|Mux31~0_combout\,
	datad => \inst19|Equal2~1_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst33|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~4_combout\ = ((\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ $ (\muxSel2|$00000|auto_generated|result_node[1]~14_combout\ $ (!\inst33|Add0~3\)))) # (GND)
-- \inst33|Add0~5\ = CARRY((\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & ((\muxSel2|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst33|Add0~3\))) # (!\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[1]~14_combout\ & !\inst33|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[1]~14_combout\,
	datad => VCC,
	cin => \inst33|Add0~3\,
	combout => \inst33|Add0~4_combout\,
	cout => \inst33|Add0~5\);

-- Location: LCCOMB_X15_Y17_N8
\inst33|opres[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~4_combout\ = (\inst16|selfalgs\(0) & (\inst16|selfalgs\(1))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & ((\inst33|Add0~4_combout\))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datad => \inst33|Add0~4_combout\,
	combout => \inst33|opres[1]~4_combout\);

-- Location: LCCOMB_X15_Y17_N10
\inst33|opres[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~5_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst33|opres[1]~4_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & ((\muxSel2|$00000|auto_generated|result_node[1]~14_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datac => \inst33|opres[1]~4_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[1]~14_combout\,
	combout => \inst33|opres[1]~5_combout\);

-- Location: LCCOMB_X15_Y17_N0
\inst33|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[1]~5_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(1),
	datab => \inst33|opres[1]~5_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(1));

-- Location: LCCOMB_X15_Y17_N12
\inst20|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux30~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(1),
	combout => \inst20|Mux30~0_combout\);

-- Location: FF_X15_Y17_N13
\inst24|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux30~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(1));

-- Location: FF_X16_Y18_N29
\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: LCCOMB_X13_Y18_N14
\inst202|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Equal2~1_combout\,
	datac => \inst700666|ACCA|valor_interno\(1),
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X13_Y18_N15
\inst700|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux14~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(1));

-- Location: LCCOMB_X15_Y17_N24
\muxSel1|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[1]~14_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux30~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(1))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(1),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux30~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst33|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_combout\ = (\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & (\inst33|Add0~5\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & 
-- (!\inst33|Add0~5\)))) # (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst33|Add0~5\)) # (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst33|Add0~5\) # 
-- (GND)))))
-- \inst33|Add0~7\ = CARRY((\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & !\inst33|Add0~5\)) # (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst33|Add0~5\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst33|Add0~5\,
	combout => \inst33|Add0~6_combout\,
	cout => \inst33|Add0~7\);

-- Location: LCCOMB_X13_Y17_N2
\inst33|opres[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~7_combout\ = (\inst33|opres[2]~6_combout\ & (((\inst33|Add0~6_combout\) # (\inst16|selfalgs\(0))))) # (!\inst33|opres[2]~6_combout\ & (\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[2]~6_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst33|Add0~6_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[2]~7_combout\);

-- Location: LCCOMB_X13_Y17_N20
\inst33|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[2]~7_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(2),
	datac => \inst33|opres[2]~7_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(2));

-- Location: LCCOMB_X13_Y17_N28
\inst20|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux29~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(2),
	combout => \inst20|Mux29~0_combout\);

-- Location: LCCOMB_X13_Y17_N8
\inst24|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[2]~feeder_combout\ = \inst20|Mux29~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux29~0_combout\,
	combout => \inst24|valor_interno[2]~feeder_combout\);

-- Location: FF_X13_Y17_N9
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X14_Y17_N27
\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LCCOMB_X13_Y17_N10
\inst202|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(2),
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X13_Y17_N11
\inst700|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux13~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(2));

-- Location: LCCOMB_X13_Y17_N14
\muxSel1|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[2]~13_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux29~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(2))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(2),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux29~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X14_Y17_N22
\inst33|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~8_combout\ = ((\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ $ (\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ $ (!\inst33|Add0~7\)))) # (GND)
-- \inst33|Add0~9\ = CARRY((\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((\muxSel1|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst33|Add0~7\))) # (!\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & 
-- (\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & !\inst33|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \inst33|Add0~7\,
	combout => \inst33|Add0~8_combout\,
	cout => \inst33|Add0~9\);

-- Location: LCCOMB_X15_Y17_N14
\inst33|opres[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~8_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~8_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~8_combout\,
	combout => \inst33|opres[3]~8_combout\);

-- Location: LCCOMB_X15_Y17_N30
\inst33|opres[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~9_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst33|opres[3]~8_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & ((\muxSel1|$00000|auto_generated|result_node[3]~12_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst33|opres[3]~8_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	combout => \inst33|opres[3]~9_combout\);

-- Location: LCCOMB_X15_Y17_N6
\inst33|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[3]~9_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(3),
	datab => \inst33|opres[3]~9_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(3));

-- Location: LCCOMB_X15_Y17_N26
\inst20|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux28~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(3),
	combout => \inst20|Mux28~0_combout\);

-- Location: FF_X15_Y17_N27
\inst24|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux28~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(3));

-- Location: FF_X15_Y17_N17
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: LCCOMB_X13_Y17_N4
\inst202|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCB|valor_interno\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(3),
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X13_Y17_N5
\inst14|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux28~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(3));

-- Location: LCCOMB_X15_Y17_N20
\muxSel2|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[3]~12_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux28~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(3))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(3),
	datab => \inst19|Equal2~1_combout\,
	datac => \inst20|Mux28~0_combout\,
	datad => \inst12|Equal12~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X14_Y17_N24
\inst33|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_combout\ = (\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (\inst33|Add0~9\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & 
-- (!\inst33|Add0~9\)))) # (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst33|Add0~9\)) # (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst33|Add0~9\) # 
-- (GND)))))
-- \inst33|Add0~11\ = CARRY((\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & !\inst33|Add0~9\)) # (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst33|Add0~9\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst33|Add0~9\,
	combout => \inst33|Add0~10_combout\,
	cout => \inst33|Add0~11\);

-- Location: LCCOMB_X14_Y15_N24
\inst33|opres[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~11_combout\ = (\inst33|opres[4]~10_combout\ & (((\inst33|Add0~10_combout\) # (\inst16|selfalgs\(0))))) # (!\inst33|opres[4]~10_combout\ & (\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~10_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	datac => \inst33|Add0~10_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[4]~11_combout\);

-- Location: LCCOMB_X14_Y15_N18
\inst33|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[4]~11_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(4),
	datac => \inst33|opres[4]~11_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(4));

-- Location: LCCOMB_X14_Y15_N10
\inst20|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux27~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(4),
	combout => \inst20|Mux27~0_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst24|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[4]~feeder_combout\ = \inst20|Mux27~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux27~0_combout\,
	combout => \inst24|valor_interno[4]~feeder_combout\);

-- Location: FF_X14_Y15_N15
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X14_Y15_N11
\inst700666|ACCB|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: LCCOMB_X14_Y15_N28
\inst202|Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux27~0_combout\ = (\inst19|Equal2~1_combout\ & ((\inst700666|ACCB|valor_interno\(4)) # ((\inst19|WideNor0~2_combout\ & \inst8|valor_interno\(12))))) # (!\inst19|Equal2~1_combout\ & (\inst19|WideNor0~2_combout\ & ((\inst8|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst19|WideNor0~2_combout\,
	datac => \inst700666|ACCB|valor_interno\(4),
	datad => \inst8|valor_interno\(12),
	combout => \inst202|Mux27~0_combout\);

-- Location: FF_X14_Y15_N29
\inst14|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux27~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(4));

-- Location: LCCOMB_X14_Y15_N4
\muxSel2|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[4]~11_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux27~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(4))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst14|valor_interno\(4),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux27~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst33|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~12_combout\ = ((\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ $ (\muxSel2|$00000|auto_generated|result_node[5]~10_combout\ $ (!\inst33|Add0~11\)))) # (GND)
-- \inst33|Add0~13\ = CARRY((\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & ((\muxSel2|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst33|Add0~11\))) # (!\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & !\inst33|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[5]~10_combout\,
	datad => VCC,
	cin => \inst33|Add0~11\,
	combout => \inst33|Add0~12_combout\,
	cout => \inst33|Add0~13\);

-- Location: LCCOMB_X14_Y17_N10
\inst33|opres[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~12_combout\ = (\inst16|selfalgs\(0) & (\inst16|selfalgs\(1))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & (\inst33|Add0~12_combout\)) # (!\inst16|selfalgs\(1) & ((\muxSel1|$00000|auto_generated|result_node[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \inst33|Add0~12_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst33|opres[5]~12_combout\);

-- Location: LCCOMB_X14_Y17_N0
\inst33|opres[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~13_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst33|opres[5]~12_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[5]~10_combout\ & ((\muxSel1|$00000|auto_generated|result_node[5]~10_combout\))))) # (!\inst16|selfalgs\(0) & (\inst33|opres[5]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[5]~12_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[5]~10_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	combout => \inst33|opres[5]~13_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst33|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[5]~13_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[5]~13_combout\,
	datab => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(5),
	combout => \inst33|opres\(5));

-- Location: LCCOMB_X15_Y16_N18
\inst20|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux26~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(5),
	combout => \inst20|Mux26~0_combout\);

-- Location: LCCOMB_X15_Y16_N14
\inst24|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[5]~feeder_combout\ = \inst20|Mux26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux26~0_combout\,
	combout => \inst24|valor_interno[5]~feeder_combout\);

-- Location: FF_X15_Y16_N15
\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

-- Location: FF_X14_Y17_N19
\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: LCCOMB_X15_Y16_N28
\inst202|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(5),
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X15_Y16_N29
\inst700|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux10~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(5));

-- Location: LCCOMB_X15_Y16_N22
\muxSel1|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[5]~10_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux26~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(5))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(5),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux26~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst33|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & (\inst33|Add0~13\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & 
-- (!\inst33|Add0~13\)))) # (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst33|Add0~13\)) # (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst33|Add0~13\) # 
-- (GND)))))
-- \inst33|Add0~15\ = CARRY((\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & !\inst33|Add0~13\)) # (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst33|Add0~13\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

-- Location: LCCOMB_X14_Y19_N0
\inst33|opres[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~14_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((\muxSel1|$00000|auto_generated|result_node[6]~9_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst33|opres[6]~14_combout\);

-- Location: LCCOMB_X14_Y19_N2
\inst33|opres[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~15_combout\ = (\inst33|opres[6]~14_combout\ & ((\inst33|Add0~14_combout\) # ((\inst16|selfalgs\(0))))) # (!\inst33|opres[6]~14_combout\ & (((\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & !\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|Add0~14_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst33|opres[6]~14_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[6]~15_combout\);

-- Location: LCCOMB_X14_Y19_N30
\inst33|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[6]~15_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(6),
	datac => \inst33|opres[6]~15_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(6));

-- Location: LCCOMB_X14_Y19_N8
\inst20|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux25~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datac => \inst33|opres\(6),
	combout => \inst20|Mux25~0_combout\);

-- Location: FF_X14_Y19_N9
\inst24|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux25~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(6));

-- Location: FF_X14_Y19_N25
\inst700666|ACCB|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(6),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: LCCOMB_X14_Y19_N4
\inst202|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = (\inst19|Equal2~1_combout\ & (!\inst19|WideNor0~2_combout\ & \inst700666|ACCB|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datac => \inst19|WideNor0~2_combout\,
	datad => \inst700666|ACCB|valor_interno\(6),
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X14_Y19_N5
\inst14|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux25~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(6));

-- Location: LCCOMB_X14_Y19_N18
\muxSel2|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[6]~9_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux25~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst14|valor_interno\(6))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(6),
	datac => \inst20|Mux25~0_combout\,
	datad => \inst19|Equal2~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst33|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~16_combout\ = ((\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ $ (\muxSel2|$00000|auto_generated|result_node[7]~8_combout\ $ (!\inst33|Add0~15\)))) # (GND)
-- \inst33|Add0~17\ = CARRY((\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & ((\muxSel2|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst33|Add0~15\))) # (!\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & !\inst33|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \inst33|Add0~15\,
	combout => \inst33|Add0~16_combout\,
	cout => \inst33|Add0~17\);

-- Location: LCCOMB_X14_Y17_N6
\inst33|opres[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~16_combout\ = (\inst16|selfalgs\(1) & (((\inst33|Add0~16_combout\) # (\inst16|selfalgs\(0))))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \inst16|selfalgs\(1),
	datac => \inst33|Add0~16_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[7]~16_combout\);

-- Location: LCCOMB_X14_Y17_N4
\inst33|opres[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~17_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & ((!\inst33|opres[7]~16_combout\) # (!\muxSel1|$00000|auto_generated|result_node[7]~8_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[7]~8_combout\ & (\muxSel1|$00000|auto_generated|result_node[7]~8_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel2|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datad => \inst33|opres[7]~16_combout\,
	combout => \inst33|opres[7]~17_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst33|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[7]~17_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[7]~17_combout\,
	datab => \inst33|opres\(7),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(7));

-- Location: LCCOMB_X13_Y17_N12
\inst20|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux24~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(7),
	combout => \inst20|Mux24~0_combout\);

-- Location: LCCOMB_X13_Y17_N26
\inst24|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[7]~feeder_combout\ = \inst20|Mux24~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux24~0_combout\,
	combout => \inst24|valor_interno[7]~feeder_combout\);

-- Location: FF_X13_Y17_N27
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: LCCOMB_X16_Y18_N6
\inst700666|ACCA|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|ACCA|valor_interno[7]~feeder_combout\);

-- Location: FF_X16_Y18_N7
\inst700666|ACCA|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: LCCOMB_X13_Y18_N22
\inst202|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|Equal2~1_combout\,
	datac => \inst700666|ACCA|valor_interno\(7),
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X13_Y18_N23
\inst700|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux8~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(7));

-- Location: LCCOMB_X13_Y17_N16
\muxSel1|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[7]~8_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux24~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(7))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst700|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst700|valor_interno\(7),
	datac => \inst12|Equal12~0_combout\,
	datad => \inst20|Mux24~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X14_Y16_N0
\inst33|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (\inst33|Add0~17\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & 
-- (!\inst33|Add0~17\)))) # (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst33|Add0~17\)) # (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst33|Add0~17\) # 
-- (GND)))))
-- \inst33|Add0~19\ = CARRY((\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & !\inst33|Add0~17\)) # (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst33|Add0~17\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

-- Location: LCCOMB_X14_Y18_N18
\inst33|opres[8]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~19_combout\ = (\inst33|opres[8]~18_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~18_combout\)))) # (!\inst33|opres[8]~18_combout\ & (\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst33|opres[8]~18_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~18_combout\,
	combout => \inst33|opres[8]~19_combout\);

-- Location: LCCOMB_X14_Y18_N28
\inst33|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[8]~19_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[16]~0clkctrl_outclk\,
	datab => \inst33|opres[8]~19_combout\,
	datad => \inst33|opres\(8),
	combout => \inst33|opres\(8));

-- Location: LCCOMB_X14_Y18_N12
\inst20|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux23~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(8),
	combout => \inst20|Mux23~0_combout\);

-- Location: FF_X14_Y18_N13
\inst24|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux23~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(8));

-- Location: FF_X14_Y17_N29
\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(8),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LCCOMB_X14_Y15_N6
\inst202|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(8),
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X14_Y15_N7
\inst700|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux7~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(8));

-- Location: LCCOMB_X15_Y15_N6
\muxSel1|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[8]~7_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux23~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(8))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(8),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux23~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X14_Y16_N2
\inst33|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~20_combout\ = ((\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ $ (\muxSel2|$00000|auto_generated|result_node[9]~6_combout\ $ (!\inst33|Add0~19\)))) # (GND)
-- \inst33|Add0~21\ = CARRY((\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((\muxSel2|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst33|Add0~19\))) # (!\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[9]~6_combout\ & !\inst33|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[9]~6_combout\,
	datad => VCC,
	cin => \inst33|Add0~19\,
	combout => \inst33|Add0~20_combout\,
	cout => \inst33|Add0~21\);

-- Location: LCCOMB_X14_Y16_N24
\inst33|opres[9]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~20_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~20_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \inst16|selfalgs\(1),
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~20_combout\,
	combout => \inst33|opres[9]~20_combout\);

-- Location: LCCOMB_X14_Y16_N26
\inst33|opres[9]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~21_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst33|opres[9]~20_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((\muxSel2|$00000|auto_generated|result_node[9]~6_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst33|opres[9]~20_combout\,
	datac => \muxSel2|$00000|auto_generated|result_node[9]~6_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[9]~21_combout\);

-- Location: LCCOMB_X14_Y16_N22
\inst33|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[9]~21_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(9),
	datab => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres[9]~21_combout\,
	combout => \inst33|opres\(9));

-- Location: LCCOMB_X15_Y16_N20
\inst20|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux22~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(9),
	combout => \inst20|Mux22~0_combout\);

-- Location: LCCOMB_X15_Y16_N8
\inst24|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[9]~feeder_combout\ = \inst20|Mux22~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux22~0_combout\,
	combout => \inst24|valor_interno[9]~feeder_combout\);

-- Location: FF_X15_Y16_N9
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: LCCOMB_X15_Y18_N12
\inst700666|ACCA|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(9),
	combout => \inst700666|ACCA|valor_interno[9]~feeder_combout\);

-- Location: FF_X15_Y18_N13
\inst700666|ACCA|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: LCCOMB_X15_Y16_N16
\inst202|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (\inst19|Equal2~1_combout\ & \inst700666|ACCA|valor_interno\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCA|valor_interno\(9),
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X15_Y16_N17
\inst700|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux6~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(9));

-- Location: LCCOMB_X15_Y16_N4
\muxSel1|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[9]~6_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux22~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(9))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(9),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux22~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X14_Y16_N4
\inst33|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_combout\ = (\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & (\inst33|Add0~21\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & 
-- (!\inst33|Add0~21\)))) # (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add0~21\)) # (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst33|Add0~21\) # 
-- (GND)))))
-- \inst33|Add0~23\ = CARRY((\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & !\inst33|Add0~21\)) # (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst33|Add0~21\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst33|Add0~21\,
	combout => \inst33|Add0~22_combout\,
	cout => \inst33|Add0~23\);

-- Location: LCCOMB_X13_Y16_N10
\inst33|opres[10]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~23_combout\ = (\inst16|selfalgs\(0) & (((\inst33|opres[10]~22_combout\)))) # (!\inst16|selfalgs\(0) & ((\inst33|opres[10]~22_combout\ & ((\inst33|Add0~22_combout\))) # (!\inst33|opres[10]~22_combout\ & 
-- (\muxSel1|$00000|auto_generated|result_node[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst33|opres[10]~22_combout\,
	datad => \inst33|Add0~22_combout\,
	combout => \inst33|opres[10]~23_combout\);

-- Location: LCCOMB_X13_Y16_N2
\inst33|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[10]~23_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(10),
	datac => \inst33|opres[10]~23_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(10));

-- Location: LCCOMB_X13_Y16_N30
\inst20|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux21~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(10),
	combout => \inst20|Mux21~0_combout\);

-- Location: FF_X14_Y17_N31
\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: LCCOMB_X13_Y16_N28
\inst202|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (\inst700666|ACCA|valor_interno\(10) & \inst19|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCA|valor_interno\(10),
	datad => \inst19|Equal2~1_combout\,
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X13_Y16_N29
\inst700|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux5~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(10));

-- Location: LCCOMB_X13_Y16_N8
\muxSel1|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[10]~5_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & (\inst20|Mux21~0_combout\)) # (!\inst12|Equal12~0_combout\ & ((\inst700|valor_interno\(10)))))) # (!\inst19|Equal2~1_combout\ & 
-- (((\inst700|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux21~0_combout\,
	datab => \inst700|valor_interno\(10),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst12|Equal12~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X14_Y16_N6
\inst33|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ $ (\muxSel2|$00000|auto_generated|result_node[11]~4_combout\ $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((\muxSel2|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst33|Add0~23\))) # (!\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[11]~4_combout\ & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

-- Location: LCCOMB_X14_Y16_N20
\inst33|opres[11]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~24_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~24_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst16|selfalgs\(1),
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~24_combout\,
	combout => \inst33|opres[11]~24_combout\);

-- Location: LCCOMB_X13_Y16_N12
\inst33|opres[11]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~25_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst33|opres[11]~24_combout\) # (!\muxSel2|$00000|auto_generated|result_node[11]~4_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & (\muxSel2|$00000|auto_generated|result_node[11]~4_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	datac => \inst33|opres[11]~24_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[11]~25_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst33|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[11]~25_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[11]~25_combout\,
	datac => \inst33|opres\(11),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(11));

-- Location: LCCOMB_X13_Y16_N0
\inst20|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux20~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(11),
	combout => \inst20|Mux20~0_combout\);

-- Location: FF_X13_Y16_N1
\inst24|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux20~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(11));

-- Location: FF_X14_Y17_N13
\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LCCOMB_X13_Y16_N24
\inst202|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (\inst700666|ACCA|valor_interno\(11) & \inst19|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(11),
	datad => \inst19|Equal2~1_combout\,
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X13_Y16_N25
\inst700|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux4~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(11));

-- Location: LCCOMB_X13_Y16_N20
\muxSel1|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[11]~4_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux20~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(11))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(11),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux20~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X14_Y16_N8
\inst33|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_combout\ = (\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & (\inst33|Add0~25\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst33|Add0~25\)))) # (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst33|Add0~25\)) # (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst33|Add0~25\) # 
-- (GND)))))
-- \inst33|Add0~27\ = CARRY((\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & !\inst33|Add0~25\)) # (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst33|Add0~25\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst33|Add0~25\,
	combout => \inst33|Add0~26_combout\,
	cout => \inst33|Add0~27\);

-- Location: LCCOMB_X14_Y15_N30
\inst33|opres[12]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~27_combout\ = (\inst33|opres[12]~26_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~26_combout\)))) # (!\inst33|opres[12]~26_combout\ & (\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[12]~26_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~26_combout\,
	combout => \inst33|opres[12]~27_combout\);

-- Location: LCCOMB_X14_Y15_N16
\inst33|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[12]~27_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(12),
	datac => \inst33|opres[12]~27_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(12));

-- Location: LCCOMB_X14_Y15_N22
\inst20|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux19~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(12),
	combout => \inst20|Mux19~0_combout\);

-- Location: FF_X14_Y15_N23
\inst24|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux19~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(12));

-- Location: LCCOMB_X16_Y18_N0
\inst700666|ACCA|valor_interno[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(12),
	combout => \inst700666|ACCA|valor_interno[12]~feeder_combout\);

-- Location: FF_X16_Y18_N1
\inst700666|ACCA|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: LCCOMB_X14_Y15_N26
\inst202|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (\inst700666|ACCA|valor_interno\(12) & \inst19|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCA|valor_interno\(12),
	datad => \inst19|Equal2~1_combout\,
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X14_Y15_N27
\inst700|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux3~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(12));

-- Location: LCCOMB_X14_Y15_N12
\muxSel1|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[12]~3_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux19~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(12))))) # (!\inst19|Equal2~1_combout\ & 
-- (((\inst700|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst12|Equal12~0_combout\,
	datac => \inst700|valor_interno\(12),
	datad => \inst20|Mux19~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X14_Y16_N10
\inst33|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ $ (\muxSel2|$00000|auto_generated|result_node[13]~2_combout\ $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & ((\muxSel2|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst33|Add0~27\))) # (!\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

-- Location: LCCOMB_X14_Y16_N18
\inst33|opres[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~28_combout\ = (\inst16|selfalgs\(1) & ((\inst16|selfalgs\(0)) # ((\inst33|Add0~28_combout\)))) # (!\inst16|selfalgs\(1) & (!\inst16|selfalgs\(0) & (\muxSel1|$00000|auto_generated|result_node[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(0),
	datac => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \inst33|Add0~28_combout\,
	combout => \inst33|opres[13]~28_combout\);

-- Location: LCCOMB_X14_Y16_N28
\inst33|opres[13]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~29_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & ((!\inst33|opres[13]~28_combout\) # (!\muxSel2|$00000|auto_generated|result_node[13]~2_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & (\muxSel2|$00000|auto_generated|result_node[13]~2_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[13]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	datac => \inst33|opres[13]~28_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[13]~29_combout\);

-- Location: LCCOMB_X14_Y16_N30
\inst33|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[13]~29_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(13),
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres[13]~29_combout\,
	combout => \inst33|opres\(13));

-- Location: LCCOMB_X15_Y16_N6
\inst20|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux18~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(13),
	combout => \inst20|Mux18~0_combout\);

-- Location: LCCOMB_X15_Y16_N26
\inst24|valor_interno[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|valor_interno[13]~feeder_combout\ = \inst20|Mux18~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|Mux18~0_combout\,
	combout => \inst24|valor_interno[13]~feeder_combout\);

-- Location: FF_X15_Y16_N27
\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst24|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

-- Location: LCCOMB_X15_Y18_N14
\inst700666|ACCA|valor_interno[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(13),
	combout => \inst700666|ACCA|valor_interno[13]~feeder_combout\);

-- Location: FF_X15_Y18_N15
\inst700666|ACCA|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: LCCOMB_X15_Y18_N20
\inst202|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (\inst700666|ACCA|valor_interno\(13) & \inst19|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCA|valor_interno\(13),
	datad => \inst19|Equal2~1_combout\,
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X15_Y18_N21
\inst700|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux2~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700|valor_interno\(13));

-- Location: LCCOMB_X15_Y16_N24
\muxSel1|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[13]~2_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~1_combout\ & ((\inst20|Mux18~0_combout\))) # (!\inst19|Equal2~1_combout\ & (\inst700|valor_interno\(13))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(13),
	datac => \inst19|Equal2~1_combout\,
	datad => \inst20|Mux18~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X14_Y16_N12
\inst33|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_combout\ = (\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & (\inst33|Add0~29\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & 
-- (!\inst33|Add0~29\)))) # (!\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst33|Add0~29\)) # (!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst33|Add0~29\) # 
-- (GND)))))
-- \inst33|Add0~31\ = CARRY((\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & (!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\ & !\inst33|Add0~29\)) # (!\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((!\inst33|Add0~29\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datad => VCC,
	cin => \inst33|Add0~29\,
	combout => \inst33|Add0~30_combout\,
	cout => \inst33|Add0~31\);

-- Location: LCCOMB_X14_Y18_N16
\inst33|opres[14]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~31_combout\ = (\inst33|opres[14]~30_combout\ & (((\inst33|Add0~30_combout\) # (\inst16|selfalgs\(0))))) # (!\inst33|opres[14]~30_combout\ & (\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst33|opres[14]~30_combout\,
	datac => \inst33|Add0~30_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[14]~31_combout\);

-- Location: LCCOMB_X14_Y18_N10
\inst33|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[14]~31_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[14]~31_combout\,
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(14),
	combout => \inst33|opres\(14));

-- Location: LCCOMB_X14_Y18_N2
\inst20|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux17~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(14),
	combout => \inst20|Mux17~0_combout\);

-- Location: FF_X14_Y18_N3
\inst24|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(14));

-- Location: FF_X15_Y17_N3
\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: LCCOMB_X15_Y18_N8
\inst202|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = (!\inst19|WideNor0~2_combout\ & (\inst19|Equal2~1_combout\ & \inst700666|ACCB|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|WideNor0~2_combout\,
	datac => \inst19|Equal2~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(14),
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X15_Y18_N9
\inst14|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux17~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(14));

-- Location: LCCOMB_X15_Y18_N6
\muxSel2|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[14]~1_combout\ = (\inst19|Equal2~1_combout\ & ((\inst12|Equal12~1_combout\ & ((\inst20|Mux17~0_combout\))) # (!\inst12|Equal12~1_combout\ & (\inst14|valor_interno\(14))))) # (!\inst19|Equal2~1_combout\ & 
-- (\inst14|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~1_combout\,
	datab => \inst14|valor_interno\(14),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst20|Mux17~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X14_Y16_N14
\inst33|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~32_combout\ = ((\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ $ (\muxSel2|$00000|auto_generated|result_node[15]~0_combout\ $ (!\inst33|Add0~31\)))) # (GND)
-- \inst33|Add0~33\ = CARRY((\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & ((\muxSel2|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst33|Add0~31\))) # (!\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[15]~0_combout\ & !\inst33|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[15]~0_combout\,
	datad => VCC,
	cin => \inst33|Add0~31\,
	combout => \inst33|Add0~32_combout\,
	cout => \inst33|Add0~33\);

-- Location: LCCOMB_X14_Y16_N16
\inst33|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~34_combout\ = \inst33|Add0~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add0~33\,
	combout => \inst33|Add0~34_combout\);

-- Location: LCCOMB_X13_Y18_N26
\inst33|opres[16]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~34_combout\ = (\inst16|selfalgs\(1) & (\inst33|Add0~34_combout\ & !\inst16|selfalgs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datac => \inst33|Add0~34_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[16]~34_combout\);

-- Location: LCCOMB_X13_Y18_N12
\inst33|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[16]~34_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[16]~34_combout\,
	datac => \inst33|opres\(16),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(16));

-- Location: FF_X14_Y17_N3
\inst|ci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst33|opres\(16),
	sload => VCC,
	ena => \inst16|selfalgs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ci~q\);

-- Location: LCCOMB_X14_Y19_N6
\inst33|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = (!\inst16|selc~q\ & \inst|ci~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst|ci~q\,
	combout => \inst33|opres[15]~1_combout\);

-- Location: LCCOMB_X14_Y19_N22
\inst33|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & ((\muxSel2|$00000|auto_generated|result_node[15]~0_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst16|selfalgs\(0),
	datac => \inst16|selfalgs\(1),
	datad => \muxSel2|$00000|auto_generated|result_node[15]~0_combout\,
	combout => \inst33|opres[15]~2_combout\);

-- Location: LCCOMB_X14_Y19_N16
\inst33|opres[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~3_combout\ = (\inst33|opres[15]~2_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~32_combout\)))) # (!\inst33|opres[15]~2_combout\ & (\inst33|opres[15]~1_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[15]~1_combout\,
	datab => \inst33|opres[15]~2_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~32_combout\,
	combout => \inst33|opres[15]~3_combout\);

-- Location: LCCOMB_X14_Y19_N20
\inst33|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[15]~3_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[15]~3_combout\,
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(15),
	combout => \inst33|opres\(15));

-- Location: FF_X14_Y18_N29
\inst|ni\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst33|opres\(15),
	sload => VCC,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ni~q\);

-- Location: LCCOMB_X16_Y21_N28
\inst101|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|valor_interno~feeder_combout\ = \inst|ni~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ni~q\,
	combout => \inst101|valor_interno~feeder_combout\);

-- Location: FF_X16_Y21_N29
\inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst101|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|valor_interno~q\);

-- Location: LCCOMB_X14_Y18_N22
\inst33|WideOr0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~3_combout\ = (\inst33|opres\(14)) # ((\inst33|opres\(0)) # ((\inst33|opres\(15)) # (\inst33|opres\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(14),
	datab => \inst33|opres\(0),
	datac => \inst33|opres\(15),
	datad => \inst33|opres\(13),
	combout => \inst33|WideOr0~3_combout\);

-- Location: LCCOMB_X14_Y18_N4
\inst33|WideOr0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = (\inst33|opres\(10)) # ((\inst33|opres\(12)) # ((\inst33|opres\(11)) # (\inst33|opres\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(10),
	datab => \inst33|opres\(12),
	datac => \inst33|opres\(11),
	datad => \inst33|opres\(9),
	combout => \inst33|WideOr0~2_combout\);

-- Location: LCCOMB_X14_Y18_N30
\inst33|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = (\inst33|opres\(6)) # ((\inst33|opres\(8)) # ((\inst33|opres\(5)) # (\inst33|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(6),
	datab => \inst33|opres\(8),
	datac => \inst33|opres\(5),
	datad => \inst33|opres\(7),
	combout => \inst33|WideOr0~1_combout\);

-- Location: LCCOMB_X14_Y18_N0
\inst33|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = (\inst33|opres\(4)) # ((\inst33|opres\(2)) # ((\inst33|opres\(1)) # (\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(4),
	datab => \inst33|opres\(2),
	datac => \inst33|opres\(1),
	datad => \inst33|opres\(3),
	combout => \inst33|WideOr0~0_combout\);

-- Location: LCCOMB_X14_Y18_N26
\inst33|WideOr0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~4_combout\ = (!\inst33|WideOr0~3_combout\ & (!\inst33|WideOr0~2_combout\ & (!\inst33|WideOr0~1_combout\ & !\inst33|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~3_combout\,
	datab => \inst33|WideOr0~2_combout\,
	datac => \inst33|WideOr0~1_combout\,
	datad => \inst33|WideOr0~0_combout\,
	combout => \inst33|WideOr0~4_combout\);

-- Location: FF_X14_Y18_N27
\inst|zi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst33|WideOr0~4_combout\,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zi~q\);

-- Location: LCCOMB_X11_Y16_N16
\inst102|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst102|valor_interno~feeder_combout\ = \inst|zi~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|zi~q\,
	combout => \inst102|valor_interno~feeder_combout\);

-- Location: FF_X11_Y16_N17
\inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst102|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|valor_interno~q\);

-- Location: LCCOMB_X14_Y18_N8
\inst|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = (\inst16|selfalgs\(1) & \inst33|opres\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selfalgs\(1),
	datad => \inst33|opres\(16),
	combout => \inst|vi~0_combout\);

-- Location: FF_X14_Y18_N9
\inst|vi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|vi~0_combout\,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vi~q\);

-- Location: LCCOMB_X15_Y21_N4
\inst103|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst103|valor_interno~feeder_combout\ = \inst|vi~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vi~q\,
	combout => \inst103|valor_interno~feeder_combout\);

-- Location: FF_X15_Y21_N5
\inst103|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst103|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst103|valor_interno~q\);

-- Location: LCCOMB_X14_Y21_N24
\inst104|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst104|valor_interno~feeder_combout\ = \inst|ci~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ci~q\,
	combout => \inst104|valor_interno~feeder_combout\);

-- Location: FF_X14_Y21_N25
\inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst104|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|valor_interno~q\);

-- Location: LCCOMB_X13_Y18_N24
\inst|hi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|hi~0_combout\ = (\inst16|selfalgs\(0) & (\inst|hi~q\)) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & ((\inst33|opres\(8)))) # (!\inst16|selfalgs\(1) & (\inst|hi~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst|hi~q\,
	datac => \inst16|selfalgs\(1),
	datad => \inst33|opres\(8),
	combout => \inst|hi~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst|hi~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|hi~feeder_combout\ = \inst|hi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|hi~0_combout\,
	combout => \inst|hi~feeder_combout\);

-- Location: FF_X12_Y18_N17
\inst|hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|hi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|hi~q\);

-- Location: FF_X11_Y19_N17
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|hi~q\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: LCCOMB_X15_Y17_N28
\inst12|Equal12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|Equal12~2_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst107|selregw\(2),
	datac => \inst107|selregw\(0),
	combout => \inst12|Equal12~2_combout\);

-- Location: FF_X14_Y21_N11
\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(15),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: FF_X14_Y21_N1
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(14),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: FF_X14_Y21_N19
\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(13),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: FF_X14_Y21_N5
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(12),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: FF_X12_Y17_N1
\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(11),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: FF_X14_Y21_N27
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(10),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LCCOMB_X14_Y21_N20
\inst700666|AUX|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(9),
	combout => \inst700666|AUX|valor_interno[9]~feeder_combout\);

-- Location: FF_X14_Y21_N21
\inst700666|AUX|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: LCCOMB_X14_Y21_N6
\inst700666|AUX|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|AUX|valor_interno[8]~feeder_combout\);

-- Location: FF_X14_Y21_N7
\inst700666|AUX|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: LCCOMB_X14_Y21_N8
\inst700666|AUX|valor_interno[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(7),
	combout => \inst700666|AUX|valor_interno[7]~feeder_combout\);

-- Location: FF_X14_Y21_N9
\inst700666|AUX|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[7]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: LCCOMB_X14_Y21_N22
\inst700666|AUX|valor_interno[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[6]~feeder_combout\ = \inst24|valor_interno\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(6),
	combout => \inst700666|AUX|valor_interno[6]~feeder_combout\);

-- Location: FF_X14_Y21_N23
\inst700666|AUX|valor_interno[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[6]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: FF_X12_Y17_N27
\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: LCCOMB_X14_Y21_N12
\inst700666|AUX|valor_interno[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(4),
	combout => \inst700666|AUX|valor_interno[4]~feeder_combout\);

-- Location: FF_X14_Y21_N13
\inst700666|AUX|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[4]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: LCCOMB_X14_Y21_N30
\inst700666|AUX|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(3),
	combout => \inst700666|AUX|valor_interno[3]~feeder_combout\);

-- Location: FF_X14_Y21_N31
\inst700666|AUX|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: FF_X14_Y21_N29
\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LCCOMB_X14_Y21_N14
\inst700666|AUX|valor_interno[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|AUX|valor_interno[1]~feeder_combout\);

-- Location: FF_X14_Y21_N15
\inst700666|AUX|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: LCCOMB_X14_Y21_N16
\inst700666|AUX|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|AUX|valor_interno[0]~feeder_combout\);

-- Location: FF_X14_Y21_N17
\inst700666|AUX|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(0));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_n <= \n~output_o\;

ww_z <= \z~output_o\;

ww_v <= \v~output_o\;

ww_c <= \c~output_o\;

ww_h <= \h~output_o\;

ww_i <= \i~output_o\;

ww_ACCA_D(15) <= \ACCA_D[15]~output_o\;

ww_ACCA_D(14) <= \ACCA_D[14]~output_o\;

ww_ACCA_D(13) <= \ACCA_D[13]~output_o\;

ww_ACCA_D(12) <= \ACCA_D[12]~output_o\;

ww_ACCA_D(11) <= \ACCA_D[11]~output_o\;

ww_ACCA_D(10) <= \ACCA_D[10]~output_o\;

ww_ACCA_D(9) <= \ACCA_D[9]~output_o\;

ww_ACCA_D(8) <= \ACCA_D[8]~output_o\;

ww_ACCA_D(7) <= \ACCA_D[7]~output_o\;

ww_ACCA_D(6) <= \ACCA_D[6]~output_o\;

ww_ACCA_D(5) <= \ACCA_D[5]~output_o\;

ww_ACCA_D(4) <= \ACCA_D[4]~output_o\;

ww_ACCA_D(3) <= \ACCA_D[3]~output_o\;

ww_ACCA_D(2) <= \ACCA_D[2]~output_o\;

ww_ACCA_D(1) <= \ACCA_D[1]~output_o\;

ww_ACCA_D(0) <= \ACCA_D[0]~output_o\;

ww_ACCB_D(15) <= \ACCB_D[15]~output_o\;

ww_ACCB_D(14) <= \ACCB_D[14]~output_o\;

ww_ACCB_D(13) <= \ACCB_D[13]~output_o\;

ww_ACCB_D(12) <= \ACCB_D[12]~output_o\;

ww_ACCB_D(11) <= \ACCB_D[11]~output_o\;

ww_ACCB_D(10) <= \ACCB_D[10]~output_o\;

ww_ACCB_D(9) <= \ACCB_D[9]~output_o\;

ww_ACCB_D(8) <= \ACCB_D[8]~output_o\;

ww_ACCB_D(7) <= \ACCB_D[7]~output_o\;

ww_ACCB_D(6) <= \ACCB_D[6]~output_o\;

ww_ACCB_D(5) <= \ACCB_D[5]~output_o\;

ww_ACCB_D(4) <= \ACCB_D[4]~output_o\;

ww_ACCB_D(3) <= \ACCB_D[3]~output_o\;

ww_ACCB_D(2) <= \ACCB_D[2]~output_o\;

ww_ACCB_D(1) <= \ACCB_D[1]~output_o\;

ww_ACCB_D(0) <= \ACCB_D[0]~output_o\;

ww_AUX_D(15) <= \AUX_D[15]~output_o\;

ww_AUX_D(14) <= \AUX_D[14]~output_o\;

ww_AUX_D(13) <= \AUX_D[13]~output_o\;

ww_AUX_D(12) <= \AUX_D[12]~output_o\;

ww_AUX_D(11) <= \AUX_D[11]~output_o\;

ww_AUX_D(10) <= \AUX_D[10]~output_o\;

ww_AUX_D(9) <= \AUX_D[9]~output_o\;

ww_AUX_D(8) <= \AUX_D[8]~output_o\;

ww_AUX_D(7) <= \AUX_D[7]~output_o\;

ww_AUX_D(6) <= \AUX_D[6]~output_o\;

ww_AUX_D(5) <= \AUX_D[5]~output_o\;

ww_AUX_D(4) <= \AUX_D[4]~output_o\;

ww_AUX_D(3) <= \AUX_D[3]~output_o\;

ww_AUX_D(2) <= \AUX_D[2]~output_o\;

ww_AUX_D(1) <= \AUX_D[1]~output_o\;

ww_AUX_D(0) <= \AUX_D[0]~output_o\;

ww_IX_D(15) <= \IX_D[15]~output_o\;

ww_IX_D(14) <= \IX_D[14]~output_o\;

ww_IX_D(13) <= \IX_D[13]~output_o\;

ww_IX_D(12) <= \IX_D[12]~output_o\;

ww_IX_D(11) <= \IX_D[11]~output_o\;

ww_IX_D(10) <= \IX_D[10]~output_o\;

ww_IX_D(9) <= \IX_D[9]~output_o\;

ww_IX_D(8) <= \IX_D[8]~output_o\;

ww_IX_D(7) <= \IX_D[7]~output_o\;

ww_IX_D(6) <= \IX_D[6]~output_o\;

ww_IX_D(5) <= \IX_D[5]~output_o\;

ww_IX_D(4) <= \IX_D[4]~output_o\;

ww_IX_D(3) <= \IX_D[3]~output_o\;

ww_IX_D(2) <= \IX_D[2]~output_o\;

ww_IX_D(1) <= \IX_D[1]~output_o\;

ww_IX_D(0) <= \IX_D[0]~output_o\;

ww_IY_D(15) <= \IY_D[15]~output_o\;

ww_IY_D(14) <= \IY_D[14]~output_o\;

ww_IY_D(13) <= \IY_D[13]~output_o\;

ww_IY_D(12) <= \IY_D[12]~output_o\;

ww_IY_D(11) <= \IY_D[11]~output_o\;

ww_IY_D(10) <= \IY_D[10]~output_o\;

ww_IY_D(9) <= \IY_D[9]~output_o\;

ww_IY_D(8) <= \IY_D[8]~output_o\;

ww_IY_D(7) <= \IY_D[7]~output_o\;

ww_IY_D(6) <= \IY_D[6]~output_o\;

ww_IY_D(5) <= \IY_D[5]~output_o\;

ww_IY_D(4) <= \IY_D[4]~output_o\;

ww_IY_D(3) <= \IY_D[3]~output_o\;

ww_IY_D(2) <= \IY_D[2]~output_o\;

ww_IY_D(1) <= \IY_D[1]~output_o\;

ww_IY_D(0) <= \IY_D[0]~output_o\;

ww_SP_D(15) <= \SP_D[15]~output_o\;

ww_SP_D(14) <= \SP_D[14]~output_o\;

ww_SP_D(13) <= \SP_D[13]~output_o\;

ww_SP_D(12) <= \SP_D[12]~output_o\;

ww_SP_D(11) <= \SP_D[11]~output_o\;

ww_SP_D(10) <= \SP_D[10]~output_o\;

ww_SP_D(9) <= \SP_D[9]~output_o\;

ww_SP_D(8) <= \SP_D[8]~output_o\;

ww_SP_D(7) <= \SP_D[7]~output_o\;

ww_SP_D(6) <= \SP_D[6]~output_o\;

ww_SP_D(5) <= \SP_D[5]~output_o\;

ww_SP_D(4) <= \SP_D[4]~output_o\;

ww_SP_D(3) <= \SP_D[3]~output_o\;

ww_SP_D(2) <= \SP_D[2]~output_o\;

ww_SP_D(1) <= \SP_D[1]~output_o\;

ww_SP_D(0) <= \SP_D[0]~output_o\;
END structure;


