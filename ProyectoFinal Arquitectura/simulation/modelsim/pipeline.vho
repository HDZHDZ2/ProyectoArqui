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

-- DATE "06/03/2022 15:47:28"

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
-- n	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst47~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst47~combout\ : std_logic;
SIGNAL \inst47~clkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst16|vf~q\ : std_logic;
SIGNAL \inst100|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst100|valor_interno~q\ : std_logic;
SIGNAL \inst34|valor_interno[4]~12\ : std_logic;
SIGNAL \inst34|valor_interno[5]~13_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[1]~3_combout\ : std_logic;
SIGNAL \inst33|opres[14]~9_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \inst33|opres[14]~10_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~5_combout\ : std_logic;
SIGNAL \inst33|opres[14]~8_combout\ : std_logic;
SIGNAL \inst1|mem~10_combout\ : std_logic;
SIGNAL \inst1|mem~22_combout\ : std_logic;
SIGNAL \inst1|mem~18_combout\ : std_logic;
SIGNAL \inst1|mem~26_combout\ : std_logic;
SIGNAL \inst4|WideOr0~0_combout\ : std_logic;
SIGNAL \inst4|selregr[2]~0_combout\ : std_logic;
SIGNAL \inst700|valor_interno[13]~2_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst202|Mux27~2_combout\ : std_logic;
SIGNAL \inst3~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|mem~11_combout\ : std_logic;
SIGNAL \inst1|mem~19_combout\ : std_logic;
SIGNAL \inst1|mem~20_combout\ : std_logic;
SIGNAL \inst1|mem~12_combout\ : std_logic;
SIGNAL \inst1|mem~23_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst202|Mux27~4_combout\ : std_logic;
SIGNAL \inst202|Mux27~3_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst33|opres~92_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst33|opres[4]~89_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst14|valor_interno[7]~0_combout\ : std_logic;
SIGNAL \inst14|valor_interno[7]~1_combout\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst1|mem~21_combout\ : std_logic;
SIGNAL \inst202|Mux30~3_combout\ : std_logic;
SIGNAL \inst202|Mux30~2_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst700666|inst|D1~2_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \inst8|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux31~3_combout\ : std_logic;
SIGNAL \inst202|Mux31~2_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst28|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|cadj~q\ : std_logic;
SIGNAL \inst46|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst|ci~4_combout\ : std_logic;
SIGNAL \inst29|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst|vi~3_combout\ : std_logic;
SIGNAL \inst|ci~1_combout\ : std_logic;
SIGNAL \inst|ci~0_combout\ : std_logic;
SIGNAL \inst20|Mux16~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \inst202|Mux16~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst33|opres[14]~61_combout\ : std_logic;
SIGNAL \inst33|Equal0~0_combout\ : std_logic;
SIGNAL \inst33|Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \inst33|opres[0]~7_combout\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \inst33|opres~59_combout\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \inst33|opres~53_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \inst33|opres~37_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \inst33|opres[8]~28_combout\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst33|opres~26_combout\ : std_logic;
SIGNAL \inst33|opres[7]~22_combout\ : std_logic;
SIGNAL \inst33|opres[7]~23_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~24_combout\ : std_logic;
SIGNAL \inst33|Add2~1_cout\ : std_logic;
SIGNAL \inst33|Add2~3\ : std_logic;
SIGNAL \inst33|Add2~5\ : std_logic;
SIGNAL \inst33|Add2~7\ : std_logic;
SIGNAL \inst33|Add2~9\ : std_logic;
SIGNAL \inst33|Add2~11\ : std_logic;
SIGNAL \inst33|Add2~13\ : std_logic;
SIGNAL \inst33|Add2~15\ : std_logic;
SIGNAL \inst33|Add2~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~25_combout\ : std_logic;
SIGNAL \inst33|opres[7]~27_combout\ : std_logic;
SIGNAL \inst20|Mux24~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~29_combout\ : std_logic;
SIGNAL \inst33|opres[8]~30_combout\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst33|opres~31_combout\ : std_logic;
SIGNAL \inst33|Add2~17\ : std_logic;
SIGNAL \inst33|Add2~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~32_combout\ : std_logic;
SIGNAL \inst20|Mux23~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst33|Add2~19\ : std_logic;
SIGNAL \inst33|Add2~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~33_combout\ : std_logic;
SIGNAL \inst33|opres[9]~34_combout\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~35_combout\ : std_logic;
SIGNAL \inst33|opres[9]~36_combout\ : std_logic;
SIGNAL \inst33|opres[9]~38_combout\ : std_logic;
SIGNAL \inst20|Mux22~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst33|opres[10]~39_combout\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres[10]~40_combout\ : std_logic;
SIGNAL \inst33|opres[10]~41_combout\ : std_logic;
SIGNAL \inst33|Add2~21\ : std_logic;
SIGNAL \inst33|Add2~22_combout\ : std_logic;
SIGNAL \inst33|opres~42_combout\ : std_logic;
SIGNAL \inst33|opres[10]~43_combout\ : std_logic;
SIGNAL \inst20|Mux21~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \inst33|Add2~23\ : std_logic;
SIGNAL \inst33|Add2~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~44_combout\ : std_logic;
SIGNAL \inst33|opres[11]~45_combout\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~46_combout\ : std_logic;
SIGNAL \inst33|opres[11]~47_combout\ : std_logic;
SIGNAL \inst33|opres~48_combout\ : std_logic;
SIGNAL \inst33|opres[11]~49_combout\ : std_logic;
SIGNAL \inst20|Mux20~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \inst33|Add2~25\ : std_logic;
SIGNAL \inst33|Add2~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~50_combout\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~51_combout\ : std_logic;
SIGNAL \inst33|opres[12]~52_combout\ : std_logic;
SIGNAL \inst33|opres[12]~54_combout\ : std_logic;
SIGNAL \inst20|Mux19~0_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \inst33|opres[13]~55_combout\ : std_logic;
SIGNAL \inst33|opres[13]~56_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~57_combout\ : std_logic;
SIGNAL \inst33|Add2~27\ : std_logic;
SIGNAL \inst33|Add2~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~58_combout\ : std_logic;
SIGNAL \inst33|opres[13]~60_combout\ : std_logic;
SIGNAL \inst20|Mux18~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~62_combout\ : std_logic;
SIGNAL \inst33|opres[14]~63_combout\ : std_logic;
SIGNAL \inst33|opres~64_combout\ : std_logic;
SIGNAL \inst33|Add2~29\ : std_logic;
SIGNAL \inst33|Add2~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~65_combout\ : std_logic;
SIGNAL \inst20|Mux17~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~96_combout\ : std_logic;
SIGNAL \inst33|opres[16]~94_combout\ : std_logic;
SIGNAL \inst33|Add2~31\ : std_logic;
SIGNAL \inst33|Add2~33\ : std_logic;
SIGNAL \inst33|Add2~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~95_combout\ : std_logic;
SIGNAL \inst33|opres[16]~97_combout\ : std_logic;
SIGNAL \inst|ci~2_combout\ : std_logic;
SIGNAL \inst|ci~3_combout\ : std_logic;
SIGNAL \inst|ci~5_combout\ : std_logic;
SIGNAL \inst|ci~q\ : std_logic;
SIGNAL \inst40|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~90_combout\ : std_logic;
SIGNAL \inst33|opres[4]~91_combout\ : std_logic;
SIGNAL \inst33|Add2~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~93_combout\ : std_logic;
SIGNAL \inst20|Mux27~0_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \inst33|opres[3]~83_combout\ : std_logic;
SIGNAL \inst33|opres[3]~84_combout\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~85_combout\ : std_logic;
SIGNAL \inst33|Add2~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~86_combout\ : std_logic;
SIGNAL \inst33|opres~87_combout\ : std_logic;
SIGNAL \inst33|opres[3]~88_combout\ : std_logic;
SIGNAL \inst20|Mux28~0_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \inst33|opres[2]~78_combout\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres[2]~79_combout\ : std_logic;
SIGNAL \inst33|opres[2]~80_combout\ : std_logic;
SIGNAL \inst33|Add2~6_combout\ : std_logic;
SIGNAL \inst33|opres~81_combout\ : std_logic;
SIGNAL \inst33|opres[2]~82_combout\ : std_logic;
SIGNAL \inst20|Mux29~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \inst33|opres[1]~72_combout\ : std_logic;
SIGNAL \inst33|opres[1]~73_combout\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~74_combout\ : std_logic;
SIGNAL \inst33|Add2~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~75_combout\ : std_logic;
SIGNAL \inst33|opres~76_combout\ : std_logic;
SIGNAL \inst33|opres[1]~77_combout\ : std_logic;
SIGNAL \inst20|Mux30~0_combout\ : std_logic;
SIGNAL \inst1|mem~13_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst21|$00000|auto_generated|result_node[2]~3_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~1_combout\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \inst50|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst33|opres[6]~17_combout\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~18_combout\ : std_logic;
SIGNAL \inst33|opres[6]~19_combout\ : std_logic;
SIGNAL \inst33|opres~20_combout\ : std_logic;
SIGNAL \inst33|Add2~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~21_combout\ : std_logic;
SIGNAL \inst20|Mux25~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \inst33|opres[5]~11_combout\ : std_logic;
SIGNAL \inst33|opres[5]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~13_combout\ : std_logic;
SIGNAL \inst33|Add2~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~14_combout\ : std_logic;
SIGNAL \inst33|opres~15_combout\ : std_logic;
SIGNAL \inst33|opres[5]~16_combout\ : std_logic;
SIGNAL \inst20|Mux26~0_combout\ : std_logic;
SIGNAL \inst1|mem~16_combout\ : std_logic;
SIGNAL \inst1|mem~17_combout\ : std_logic;
SIGNAL \inst4|WideNor0~0_combout\ : std_logic;
SIGNAL \inst27|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~66_combout\ : std_logic;
SIGNAL \inst33|opres~67_combout\ : std_logic;
SIGNAL \inst33|Add2~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~68_combout\ : std_logic;
SIGNAL \inst33|opres[0]~69_combout\ : std_logic;
SIGNAL \inst33|opres[0]~70_combout\ : std_logic;
SIGNAL \inst33|opres[0]~71_combout\ : std_logic;
SIGNAL \inst20|Mux31~0_combout\ : std_logic;
SIGNAL \inst9999|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst34|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno[1]~6\ : std_logic;
SIGNAL \inst34|valor_interno[2]~7_combout\ : std_logic;
SIGNAL \inst34|valor_interno[2]~8\ : std_logic;
SIGNAL \inst34|valor_interno[3]~9_combout\ : std_logic;
SIGNAL \inst34|valor_interno[3]~10\ : std_logic;
SIGNAL \inst34|valor_interno[4]~11_combout\ : std_logic;
SIGNAL \inst1|mem~14_combout\ : std_logic;
SIGNAL \inst1|mem~24_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|WideOr0~combout\ : std_logic;
SIGNAL \inst49|selctrl~0_combout\ : std_logic;
SIGNAL \inst49|selctrl~1_combout\ : std_logic;
SIGNAL \inst49|selctrl~2_combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|mem~15_combout\ : std_logic;
SIGNAL \inst1|mem~25_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|Equal3~1_combout\ : std_logic;
SIGNAL \inst4|Equal3~2_combout\ : std_logic;
SIGNAL \inst31|$00000|auto_generated|result_node[2]~4_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst33|opres[15]~3_combout\ : std_logic;
SIGNAL \inst33|opres~4_combout\ : std_logic;
SIGNAL \inst33|Add2~32_combout\ : std_logic;
SIGNAL \inst33|opres[15]~5_combout\ : std_logic;
SIGNAL \inst33|opres~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst33|opres[15]~6_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|ni~8_combout\ : std_logic;
SIGNAL \inst|ni~7_combout\ : std_logic;
SIGNAL \inst|ni~q\ : std_logic;
SIGNAL \inst101|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst|zi~8_combout\ : std_logic;
SIGNAL \inst|zi~4_combout\ : std_logic;
SIGNAL \inst|zi~2_combout\ : std_logic;
SIGNAL \inst|zi~3_combout\ : std_logic;
SIGNAL \inst|zi~5_combout\ : std_logic;
SIGNAL \inst|zi~6_combout\ : std_logic;
SIGNAL \inst|zi~7_combout\ : std_logic;
SIGNAL \inst|zi~q\ : std_logic;
SIGNAL \inst102|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~1_combout\ : std_logic;
SIGNAL \inst|vi~2_combout\ : std_logic;
SIGNAL \inst|vi~4_combout\ : std_logic;
SIGNAL \inst|vi~5_combout\ : std_logic;
SIGNAL \inst|vi~q\ : std_logic;
SIGNAL \inst103|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|hi~0_combout\ : std_logic;
SIGNAL \inst|hi~q\ : std_logic;
SIGNAL \inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst|ii~9_combout\ : std_logic;
SIGNAL \inst|ii~10_combout\ : std_logic;
SIGNAL \inst|ii~q\ : std_logic;
SIGNAL \inst106|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst106|valor_interno~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst700666|inst1000|Equal1~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst33|opres\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|valor_interno\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst700|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|$00000|auto_generated|result_node\ : std_logic_vector(0 DOWNTO 0);
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

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\inst47~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst47~combout\);

\inst33|Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|Equal0~0_combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);

\inst3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3~combout\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
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

-- Location: IOOBUF_X31_Y9_N16
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

-- Location: IOOBUF_X31_Y5_N9
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

-- Location: IOOBUF_X31_Y6_N2
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

-- Location: IOOBUF_X24_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N2
\i~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst106|valor_interno~q\,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X24_Y0_N30
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

-- Location: IOOBUF_X31_Y9_N2
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

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X31_Y4_N2
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N30
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

-- Location: IOOBUF_X31_Y4_N9
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

-- Location: IOOBUF_X31_Y4_N16
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

-- Location: IOOBUF_X17_Y0_N2
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

-- Location: IOOBUF_X31_Y12_N2
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

-- Location: IOOBUF_X31_Y7_N9
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

-- Location: IOOBUF_X31_Y7_N2
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

-- Location: IOOBUF_X29_Y0_N23
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X31_Y2_N23
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

-- Location: IOOBUF_X31_Y11_N23
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X17_Y0_N23
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X22_Y0_N23
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

-- Location: IOOBUF_X22_Y0_N16
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

-- Location: IOOBUF_X17_Y0_N9
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

-- Location: IOOBUF_X31_Y9_N23
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

-- Location: IOOBUF_X31_Y7_N16
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

-- Location: IOOBUF_X31_Y11_N2
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

-- Location: IOOBUF_X31_Y9_N9
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

-- Location: IOOBUF_X31_Y7_N23
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

-- Location: IOOBUF_X31_Y3_N16
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

-- Location: IOOBUF_X31_Y5_N2
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

-- Location: IOOBUF_X31_Y6_N9
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

-- Location: IOOBUF_X31_Y2_N9
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

-- Location: IOOBUF_X31_Y5_N23
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

-- Location: IOOBUF_X27_Y0_N9
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

-- Location: IOOBUF_X31_Y5_N16
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

-- Location: IOOBUF_X31_Y1_N23
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

-- Location: IOOBUF_X31_Y4_N23
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

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X27_Y0_N30
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

-- Location: IOOBUF_X31_Y3_N9
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

-- Location: IOOBUF_X31_Y3_N2
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

-- Location: IOOBUF_X27_Y0_N16
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

-- Location: IOOBUF_X27_Y0_N2
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

-- Location: IOOBUF_X27_Y0_N23
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

-- Location: IOOBUF_X0_Y2_N9
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

-- Location: IOOBUF_X10_Y20_N23
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

-- Location: IOOBUF_X10_Y18_N16
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

-- Location: IOOBUF_X17_Y0_N16
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

-- Location: IOOBUF_X24_Y25_N16
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

-- Location: IOOBUF_X13_Y25_N30
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

-- Location: IOOBUF_X17_Y25_N30
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

-- Location: IOOBUF_X31_Y6_N23
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

-- Location: IOOBUF_X15_Y25_N2
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

-- Location: IOOBUF_X31_Y12_N9
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

-- Location: IOOBUF_X17_Y25_N23
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

-- Location: IOOBUF_X10_Y19_N9
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

-- Location: IOOBUF_X17_Y25_N9
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

-- Location: IOOBUF_X3_Y0_N9
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

-- Location: IOOBUF_X11_Y25_N16
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X31_Y3_N23
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

-- Location: IOOBUF_X13_Y0_N9
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

-- Location: IOOBUF_X1_Y10_N16
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

-- Location: IOOBUF_X13_Y0_N23
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

-- Location: IOOBUF_X31_Y13_N23
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

-- Location: IOOBUF_X0_Y8_N9
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X17_Y25_N2
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

-- Location: IOOBUF_X31_Y19_N23
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

-- Location: IOOBUF_X10_Y19_N16
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

-- Location: IOOBUF_X19_Y25_N23
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

-- Location: IOOBUF_X22_Y25_N16
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

-- Location: IOOBUF_X29_Y25_N30
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

-- Location: IOOBUF_X29_Y25_N2
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

-- Location: IOOBUF_X6_Y10_N9
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

-- Location: IOOBUF_X17_Y25_N16
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

-- Location: IOOBUF_X24_Y25_N2
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

-- Location: IOOBUF_X31_Y11_N9
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

-- Location: IOOBUF_X29_Y25_N23
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

-- Location: IOOBUF_X24_Y25_N9
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

-- Location: IOOBUF_X10_Y20_N9
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

-- Location: IOOBUF_X19_Y25_N2
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

-- Location: IOOBUF_X13_Y25_N23
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

-- Location: IOOBUF_X31_Y22_N16
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

-- Location: IOOBUF_X31_Y22_N9
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N30
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

-- Location: IOOBUF_X31_Y1_N9
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

-- Location: IOOBUF_X31_Y14_N23
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X3_Y10_N30
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

-- Location: IOOBUF_X1_Y10_N23
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

-- Location: LCCOMB_X22_Y8_N18
inst47 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47~combout\ = LCELL((\inst49|selctrl~2_combout\ & !\RELOJ~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|selctrl~2_combout\,
	datad => \RELOJ~input_o\,
	combout => \inst47~combout\);

-- Location: CLKCTRL_G6
\inst47~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst47~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst47~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y7_N12
\inst25|$00000|auto_generated|result_node[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|$00000|auto_generated|result_node\(0) = (\inst49|selctrl~2_combout\ & ((\inst4|Equal7~0_combout\) # (\inst4|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal7~0_combout\,
	datac => \inst49|selctrl~2_combout\,
	datad => \inst4|Equal3~2_combout\,
	combout => \inst25|$00000|auto_generated|result_node\(0));

-- Location: IOIBUF_X0_Y7_N15
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

-- Location: CLKCTRL_G2
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

-- Location: FF_X24_Y7_N13
\inst16|vf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst25|$00000|auto_generated|result_node\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|vf~q\);

-- Location: LCCOMB_X25_Y7_N0
\inst100|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst100|valor_interno~feeder_combout\ = \inst16|vf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|vf~q\,
	combout => \inst100|valor_interno~feeder_combout\);

-- Location: FF_X25_Y7_N1
\inst100|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst100|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst100|valor_interno~q\);

-- Location: LCCOMB_X25_Y8_N16
\inst34|valor_interno[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[4]~11_combout\ = (\inst34|valor_interno\(4) & (!\inst34|valor_interno[3]~10\)) # (!\inst34|valor_interno\(4) & ((\inst34|valor_interno[3]~10\) # (GND)))
-- \inst34|valor_interno[4]~12\ = CARRY((!\inst34|valor_interno[3]~10\) # (!\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datad => VCC,
	cin => \inst34|valor_interno[3]~10\,
	combout => \inst34|valor_interno[4]~11_combout\,
	cout => \inst34|valor_interno[4]~12\);

-- Location: LCCOMB_X25_Y8_N18
\inst34|valor_interno[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~13_combout\ = \inst34|valor_interno\(5) $ (!\inst34|valor_interno[4]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(5),
	cin => \inst34|valor_interno[4]~12\,
	combout => \inst34|valor_interno[5]~13_combout\);

-- Location: LCCOMB_X23_Y5_N14
\inst31|$00000|auto_generated|result_node[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[1]~3_combout\ = (\inst49|selctrl~2_combout\ & \inst4|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|selctrl~2_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst31|$00000|auto_generated|result_node[1]~3_combout\);

-- Location: FF_X23_Y5_N15
\inst16|selop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst31|$00000|auto_generated|result_node[1]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(1));

-- Location: LCCOMB_X20_Y7_N28
\inst33|opres[14]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~9_combout\ = (\inst16|selop\(1)) # (!\inst16|selop\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datad => \inst16|selop\(1),
	combout => \inst33|opres[14]~9_combout\);

-- Location: LCCOMB_X23_Y5_N2
\inst31|$00000|auto_generated|result_node[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[0]~2_combout\ = (!\inst4|WideNor0~0_combout\ & \inst49|selctrl~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|WideNor0~0_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst31|$00000|auto_generated|result_node[0]~2_combout\);

-- Location: FF_X23_Y5_N3
\inst16|selop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst31|$00000|auto_generated|result_node[0]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(0));

-- Location: LCCOMB_X23_Y7_N8
\inst33|opres[14]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~10_combout\ = (\inst16|selop\(2) & ((\inst16|selop\(1)) # (\inst16|selop\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selop\(1),
	datac => \inst16|selop\(0),
	datad => \inst16|selop\(2),
	combout => \inst33|opres[14]~10_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst34|valor_interno[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[1]~5_combout\ = (\inst34|valor_interno\(0) & (\inst34|valor_interno\(1) $ (VCC))) # (!\inst34|valor_interno\(0) & (\inst34|valor_interno\(1) & VCC))
-- \inst34|valor_interno[1]~6\ = CARRY((\inst34|valor_interno\(0) & \inst34|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(1),
	datad => VCC,
	combout => \inst34|valor_interno[1]~5_combout\,
	cout => \inst34|valor_interno[1]~6\);

-- Location: LCCOMB_X24_Y6_N24
\inst33|opres[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~8_combout\ = (!\inst16|selop\(2) & \inst16|selop\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selop\(2),
	datad => \inst16|selop\(1),
	combout => \inst33|opres[14]~8_combout\);

-- Location: LCCOMB_X25_Y8_N8
\inst1|mem~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~10_combout\ = (!\inst34|valor_interno\(3) & ((\inst34|valor_interno\(1) & ((!\inst34|valor_interno\(2)))) # (!\inst34|valor_interno\(1) & (!\inst34|valor_interno\(0) & \inst34|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(1),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~10_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst1|mem~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~22_combout\ = (!\inst34|valor_interno\(5) & (\inst1|mem~10_combout\ & !\inst34|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(5),
	datac => \inst1|mem~10_combout\,
	datad => \inst34|valor_interno\(4),
	combout => \inst1|mem~22_combout\);

-- Location: FF_X24_Y8_N27
\inst8|valor_interno[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|mem~22_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(16));

-- Location: LCCOMB_X25_Y8_N4
\inst1|mem~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~18_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(2) & (\inst34|valor_interno\(0) $ (!\inst34|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(0),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(2),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~18_combout\);

-- Location: LCCOMB_X24_Y8_N20
\inst1|mem~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~26_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst1|mem~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~18_combout\,
	combout => \inst1|mem~26_combout\);

-- Location: FF_X24_Y8_N21
\inst8|valor_interno[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|mem~26_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(17));

-- Location: LCCOMB_X24_Y8_N2
\inst4|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~0_combout\ = ((\inst8|valor_interno\(17) & ((\inst8|valor_interno\(18)) # (!\inst8|valor_interno\(16)))) # (!\inst8|valor_interno\(17) & ((!\inst8|valor_interno\(18))))) # (!\inst4|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(18),
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y8_N10
\inst4|selregr[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|selregr[2]~0_combout\ = ((!\inst4|Equal2~1_combout\) # (!\inst8|valor_interno\(18))) # (!\inst8|valor_interno\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datac => \inst8|valor_interno\(18),
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|selregr[2]~0_combout\);

-- Location: LCCOMB_X23_Y9_N30
\inst700|valor_interno[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700|valor_interno[13]~2_combout\ = ((\inst4|WideOr0~0_combout\ & (!\inst4|Equal7~0_combout\ & \inst4|selregr[2]~0_combout\))) # (!\inst27|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr0~0_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|selregr[2]~0_combout\,
	datad => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst700|valor_interno[13]~2_combout\);

-- Location: LCCOMB_X23_Y9_N10
\inst2|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst4|selregr[2]~0_combout\ & (\inst49|selctrl~2_combout\ & ((\inst4|Equal7~0_combout\) # (!\inst4|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr0~0_combout\,
	datab => \inst4|selregr[2]~0_combout\,
	datac => \inst4|Equal7~0_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X23_Y9_N4
\inst202|Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux27~2_combout\ = (\inst2|process_0~3_combout\ & (!\inst31|$00000|auto_generated|result_node[2]~4_combout\ & ((\inst4|Equal7~0_combout\) # (!\inst4|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~3_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|WideNor0~0_combout\,
	datad => \inst31|$00000|auto_generated|result_node[2]~4_combout\,
	combout => \inst202|Mux27~2_combout\);

-- Location: CLKCTRL_G5
\inst3~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N16
\inst1|mem~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~11_combout\ = (!\inst34|valor_interno\(5) & !\inst34|valor_interno\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|valor_interno\(5),
	datad => \inst34|valor_interno\(4),
	combout => \inst1|mem~11_combout\);

-- Location: LCCOMB_X22_Y8_N12
\inst1|mem~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~19_combout\ = (!\inst34|valor_interno\(3) & !\inst34|valor_interno\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~19_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst1|mem~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~20_combout\ = (\inst1|mem~11_combout\ & (!\inst34|valor_interno\(2) & (\inst1|mem~19_combout\ & \inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem~11_combout\,
	datab => \inst34|valor_interno\(2),
	datac => \inst1|mem~19_combout\,
	datad => \inst34|valor_interno\(0),
	combout => \inst1|mem~20_combout\);

-- Location: FF_X24_Y8_N31
\inst8|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|mem~20_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(4));

-- Location: LCCOMB_X25_Y8_N6
\inst1|mem~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~12_combout\ = (!\inst34|valor_interno\(3) & ((\inst34|valor_interno\(1) & ((!\inst34|valor_interno\(2)) # (!\inst34|valor_interno\(0)))) # (!\inst34|valor_interno\(1) & ((\inst34|valor_interno\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~12_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst1|mem~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~23_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & \inst1|mem~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~12_combout\,
	combout => \inst1|mem~23_combout\);

-- Location: FF_X24_Y8_N5
\inst8|valor_interno[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|mem~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(20));

-- Location: LCCOMB_X24_Y8_N0
\inst4|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst8|valor_interno\(21) & (!\inst8|valor_interno\(16) & (\inst8|valor_interno\(23) & \inst8|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(16),
	datac => \inst8|valor_interno\(23),
	datad => \inst8|valor_interno\(17),
	combout => \inst4|Equal0~0_combout\);

-- Location: FF_X24_Y8_N15
\inst8|valor_interno[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|mem~23_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(19));

-- Location: LCCOMB_X23_Y8_N28
\inst4|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst8|valor_interno\(20) & (\inst8|valor_interno\(18) & (\inst4|Equal0~0_combout\ & !\inst8|valor_interno\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(20),
	datab => \inst8|valor_interno\(18),
	datac => \inst4|Equal0~0_combout\,
	datad => \inst8|valor_interno\(19),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y6_N0
\inst202|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux27~4_combout\ = (\inst8|valor_interno\(4) & (\inst49|selctrl~2_combout\ & ((\inst4|Equal0~1_combout\) # (\inst4|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(4),
	datab => \inst4|Equal0~1_combout\,
	datac => \inst4|Equal3~2_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst202|Mux27~4_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst202|Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux27~3_combout\ = (\inst27|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst202|Mux27~4_combout\) # ((\inst700666|ACCB|valor_interno\(4) & \inst202|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	datab => \inst700666|ACCB|valor_interno\(4),
	datac => \inst202|Mux27~2_combout\,
	datad => \inst202|Mux27~4_combout\,
	combout => \inst202|Mux27~3_combout\);

-- Location: FF_X24_Y7_N21
\inst14|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux27~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(4));

-- Location: LCCOMB_X23_Y8_N12
\inst21|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[0]~0_combout\ = (\inst8|valor_interno\(17) & (\inst8|valor_interno\(16) & \inst4|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(17),
	datab => \inst8|valor_interno\(16),
	datad => \inst4|Equal2~1_combout\,
	combout => \inst21|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y8_N22
\inst21|$00000|auto_generated|result_node[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[0]~1_combout\ = (\inst49|selctrl~2_combout\ & ((\inst21|$00000|auto_generated|result_node[0]~0_combout\) # ((!\inst8|valor_interno\(22) & \inst4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst21|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst21|$00000|auto_generated|result_node[0]~1_combout\);

-- Location: FF_X23_Y8_N23
\inst16|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst21|$00000|auto_generated|result_node[0]~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(0));

-- Location: FF_X23_Y8_N21
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst16|selregw\(0),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LCCOMB_X23_Y8_N2
\inst700666|inst1000|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~0_combout\ = (!\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\inst2|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (\inst4|selregr[2]~0_combout\ & (\inst700666|inst1000|Equal1~0_combout\ & (\inst4|WideOr0~combout\ & \inst49|selctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|selregr[2]~0_combout\,
	datab => \inst700666|inst1000|Equal1~0_combout\,
	datac => \inst4|WideOr0~combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst33|opres~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~92_combout\ = (\inst700|valor_interno\(4) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(4)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(4),
	datab => \inst14|valor_interno\(4),
	datac => \inst24|valor_interno\(4),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~92_combout\);

-- Location: LCCOMB_X24_Y7_N18
\inst50|$00000|auto_generated|result_node[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[4]~11_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(4))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(4),
	datab => \inst14|valor_interno\(4),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X23_Y7_N10
\inst33|opres[4]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~89_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(4) & ((!\inst50|$00000|auto_generated|result_node[4]~11_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(4) & ((\inst50|$00000|auto_generated|result_node[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[14]~10_combout\,
	datac => \inst700|valor_interno\(4),
	datad => \inst50|$00000|auto_generated|result_node[4]~11_combout\,
	combout => \inst33|opres[4]~89_combout\);

-- Location: LCCOMB_X23_Y4_N8
\inst700666|ACCB|valor_interno[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(3),
	combout => \inst700666|ACCB|valor_interno[3]~feeder_combout\);

-- Location: FF_X23_Y4_N9
\inst700666|ACCB|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[3]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: LCCOMB_X23_Y9_N22
\inst14|valor_interno[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[7]~0_combout\ = (!\inst4|Equal0~1_combout\ & !\inst4|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~1_combout\,
	datad => \inst4|Equal3~2_combout\,
	combout => \inst14|valor_interno[7]~0_combout\);

-- Location: LCCOMB_X23_Y9_N18
\inst14|valor_interno[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|valor_interno[7]~1_combout\ = (\inst14|valor_interno[7]~0_combout\ & (\inst2|process_0~3_combout\ & ((\inst4|Equal7~0_combout\) # (!\inst4|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideNor0~0_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst14|valor_interno[7]~0_combout\,
	datad => \inst2|process_0~3_combout\,
	combout => \inst14|valor_interno[7]~1_combout\);

-- Location: LCCOMB_X27_Y7_N4
\inst202|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = (\inst700666|ACCB|valor_interno\(3) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCB|valor_interno\(3),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X27_Y7_N5
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

-- Location: LCCOMB_X23_Y7_N12
\inst50|$00000|auto_generated|result_node[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[3]~12_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(3))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(3),
	datac => \inst14|valor_interno\(3),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X25_Y7_N4
\inst202|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = (\inst700666|ACCB|valor_interno\(2) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(2),
	datac => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux29~0_combout\);

-- Location: FF_X25_Y7_N5
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

-- Location: LCCOMB_X24_Y7_N2
\inst50|$00000|auto_generated|result_node[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[2]~13_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(2)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(2),
	datab => \inst24|valor_interno\(2),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: FF_X24_Y7_N3
\inst700666|ACCB|valor_interno[1]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LCCOMB_X25_Y8_N26
\inst1|mem~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~21_combout\ = (!\inst34|valor_interno\(0) & \inst1|mem~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|valor_interno\(0),
	datad => \inst1|mem~13_combout\,
	combout => \inst1|mem~21_combout\);

-- Location: FF_X25_Y8_N27
\inst8|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst1|mem~21_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(1));

-- Location: LCCOMB_X24_Y9_N24
\inst202|Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~3_combout\ = (\inst49|selctrl~2_combout\ & (\inst8|valor_interno\(1) & ((\inst4|Equal3~2_combout\) # (\inst4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|selctrl~2_combout\,
	datab => \inst4|Equal3~2_combout\,
	datac => \inst8|valor_interno\(1),
	datad => \inst4|Equal0~1_combout\,
	combout => \inst202|Mux30~3_combout\);

-- Location: LCCOMB_X23_Y9_N26
\inst202|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux30~2_combout\ = (\inst27|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst202|Mux30~3_combout\) # ((\inst700666|ACCB|valor_interno\(1) & \inst202|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(1),
	datab => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst202|Mux27~2_combout\,
	datad => \inst202|Mux30~3_combout\,
	combout => \inst202|Mux30~2_combout\);

-- Location: FF_X23_Y9_N27
\inst14|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux30~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(1));

-- Location: LCCOMB_X23_Y7_N6
\inst50|$00000|auto_generated|result_node[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[1]~14_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(1)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(1),
	datab => \inst24|valor_interno\(1),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X25_Y4_N25
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: LCCOMB_X23_Y9_N8
\inst700666|inst|D1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst|D1~2_combout\ = (\inst49|selctrl~2_combout\ & (\inst4|selregr[2]~0_combout\ $ (((\inst4|WideOr0~0_combout\ & !\inst4|Equal7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr0~0_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|selregr[2]~0_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst700666|inst|D1~2_combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst202|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(1)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(1),
	datab => \inst700666|ACCA|valor_interno\(1),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X25_Y4_N21
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

-- Location: FF_X24_Y7_N1
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LCCOMB_X25_Y4_N18
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

-- Location: FF_X25_Y4_N19
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(0));

-- Location: LCCOMB_X25_Y4_N26
\inst202|Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(0)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(0),
	datab => \inst700666|ACCA|valor_interno\(0),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X25_Y4_N27
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

-- Location: LCCOMB_X20_Y8_N24
\inst8|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|valor_interno[0]~feeder_combout\ = \inst1|mem~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mem~24_combout\,
	combout => \inst8|valor_interno[0]~feeder_combout\);

-- Location: FF_X20_Y8_N25
\inst8|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \inst8|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(0));

-- Location: LCCOMB_X24_Y7_N22
\inst202|Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux31~3_combout\ = (\inst8|valor_interno\(0) & (\inst49|selctrl~2_combout\ & ((\inst4|Equal0~1_combout\) # (\inst4|Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal0~1_combout\,
	datab => \inst8|valor_interno\(0),
	datac => \inst49|selctrl~2_combout\,
	datad => \inst4|Equal3~2_combout\,
	combout => \inst202|Mux31~3_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst202|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux31~2_combout\ = (\inst27|$00000|auto_generated|result_node[0]~0_combout\ & ((\inst202|Mux31~3_combout\) # ((\inst700666|ACCB|valor_interno\(0) & \inst202|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst202|Mux31~3_combout\,
	datab => \inst700666|ACCB|valor_interno\(0),
	datac => \inst202|Mux27~2_combout\,
	datad => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst202|Mux31~2_combout\);

-- Location: FF_X24_Y7_N29
\inst14|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux31~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(0));

-- Location: LCCOMB_X22_Y7_N6
\inst50|$00000|auto_generated|result_node[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[0]~15_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(0)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(0),
	datac => \inst24|valor_interno\(0),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X25_Y6_N20
\inst28|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|$00000|auto_generated|result_node[0]~0_combout\ = (\inst49|selctrl~2_combout\ & ((\inst4|Equal7~0_combout\) # (!\inst4|selregr[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|selregr[2]~0_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst28|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X25_Y6_N21
\inst16|cadj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst28|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|cadj~q\);

-- Location: LCCOMB_X25_Y6_N22
\inst46|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst46|$00000|auto_generated|result_node[2]~2_combout\ = (\inst8|valor_interno\(16) & (\inst8|valor_interno\(18) & (\inst4|Equal2~1_combout\ & \inst49|selctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(16),
	datab => \inst8|valor_interno\(18),
	datac => \inst4|Equal2~1_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst46|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X25_Y6_N23
\inst16|selfalgs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst46|$00000|auto_generated|result_node[2]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(3));

-- Location: LCCOMB_X22_Y8_N16
\inst29|$00000|auto_generated|result_node[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[1]~1_combout\ = ((\inst8|valor_interno\(17) & ((\inst8|valor_interno\(18)) # (!\inst8|valor_interno\(16)))) # (!\inst8|valor_interno\(17) & ((\inst8|valor_interno\(16)) # (!\inst8|valor_interno\(18))))) # 
-- (!\inst4|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(18),
	datad => \inst8|valor_interno\(16),
	combout => \inst29|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X25_Y6_N16
\inst29|$00000|auto_generated|result_node[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[1]~2_combout\ = (\inst49|selctrl~2_combout\ & !\inst29|$00000|auto_generated|result_node[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst49|selctrl~2_combout\,
	datad => \inst29|$00000|auto_generated|result_node[1]~1_combout\,
	combout => \inst29|$00000|auto_generated|result_node[1]~2_combout\);

-- Location: FF_X25_Y6_N17
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst29|$00000|auto_generated|result_node[1]~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: LCCOMB_X25_Y6_N8
\inst|ci~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~4_combout\ = (!\inst16|selfalgs\(3) & (!\inst16|cadj~q\ & !\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(3),
	datab => \inst16|cadj~q\,
	datad => \inst16|selfalgs\(1),
	combout => \inst|ci~4_combout\);

-- Location: LCCOMB_X25_Y6_N18
\inst29|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|$00000|auto_generated|result_node[0]~0_combout\ = (\inst4|Equal0~1_combout\ & \inst49|selctrl~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal0~1_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst29|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X25_Y6_N19
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst29|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LCCOMB_X25_Y6_N12
\inst|vi~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~3_combout\ = (!\inst16|selfalgs\(3) & \inst16|selfalgs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selfalgs\(3),
	datad => \inst16|selfalgs\(0),
	combout => \inst|vi~3_combout\);

-- Location: LCCOMB_X25_Y6_N26
\inst|ci~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~1_combout\ = (\inst16|cadj~q\ & ((\inst16|selfalgs\(1)))) # (!\inst16|cadj~q\ & ((\inst16|selfalgs\(3)) # (!\inst16|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|cadj~q\,
	datac => \inst16|selfalgs\(3),
	datad => \inst16|selfalgs\(1),
	combout => \inst|ci~1_combout\);

-- Location: LCCOMB_X25_Y6_N4
\inst|ci~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~0_combout\ = (\inst|ci~q\) # (\inst16|selfalgs\(1) $ (((!\inst16|selfalgs\(0) & \inst16|selfalgs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \inst16|selfalgs\(3),
	datad => \inst|ci~q\,
	combout => \inst|ci~0_combout\);

-- Location: LCCOMB_X24_Y6_N20
\inst20|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux16~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(15),
	combout => \inst20|Mux16~0_combout\);

-- Location: FF_X24_Y6_N21
\inst24|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux16~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(15));

-- Location: LCCOMB_X24_Y4_N18
\inst700666|ACCB|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|ACCB|valor_interno[15]~feeder_combout\);

-- Location: FF_X24_Y4_N19
\inst700666|ACCB|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: FF_X25_Y4_N9
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LCCOMB_X24_Y4_N10
\inst202|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(15)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(15),
	datab => \inst700666|ACCA|valor_interno\(15),
	datac => \inst700|valor_interno[13]~2_combout\,
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X24_Y4_N11
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

-- Location: LCCOMB_X24_Y4_N4
\inst202|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux16~0_combout\ = (\inst14|valor_interno[7]~1_combout\ & \inst700666|ACCB|valor_interno\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|valor_interno[7]~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(15),
	combout => \inst202|Mux16~0_combout\);

-- Location: FF_X24_Y4_N5
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

-- Location: LCCOMB_X24_Y6_N28
\inst50|$00000|auto_generated|result_node[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[15]~0_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(15))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(15),
	datac => \inst14|valor_interno\(15),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst202|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = (\inst700666|ACCB|valor_interno\(14) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(14),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X23_Y9_N1
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

-- Location: LCCOMB_X23_Y9_N2
\inst50|$00000|auto_generated|result_node[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[14]~1_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(14))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(14),
	datab => \inst14|valor_interno\(14),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X23_Y6_N26
\inst33|opres[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~61_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(14) & ((!\inst33|opres[14]~10_combout\) # 
-- (!\inst50|$00000|auto_generated|result_node[14]~1_combout\))) # (!\inst700|valor_interno\(14) & (\inst50|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst50|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \inst33|opres[14]~10_combout\,
	combout => \inst33|opres[14]~61_combout\);

-- Location: LCCOMB_X23_Y5_N16
\inst33|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Equal0~0_combout\ = (!\inst16|selop\(0) & (!\inst16|selop\(1) & !\inst16|selop\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selop\(0),
	datac => \inst16|selop\(1),
	datad => \inst16|selop\(2),
	combout => \inst33|Equal0~0_combout\);

-- Location: CLKCTRL_G8
\inst33|Equal0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X20_Y7_N18
\inst33|opres[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~7_combout\ = (\inst16|selop\(0) & \inst16|selop\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selop\(0),
	datad => \inst16|selop\(1),
	combout => \inst33|opres[0]~7_combout\);

-- Location: FF_X24_Y4_N21
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(13));

-- Location: LCCOMB_X24_Y4_N24
\inst202|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = (\inst14|valor_interno[7]~1_combout\ & \inst700666|ACCB|valor_interno\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|valor_interno[7]~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(13),
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X24_Y4_N25
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

-- Location: LCCOMB_X23_Y4_N20
\inst33|opres~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~59_combout\ = (\inst700|valor_interno\(13) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(13)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(13),
	datab => \inst14|valor_interno\(13),
	datac => \inst24|valor_interno\(13),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~59_combout\);

-- Location: FF_X22_Y4_N1
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(12));

-- Location: LCCOMB_X22_Y4_N8
\inst202|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = (\inst700666|ACCB|valor_interno\(12) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(12),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X22_Y4_N9
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

-- Location: LCCOMB_X22_Y5_N24
\inst33|opres~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~53_combout\ = (\inst700|valor_interno\(12) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(12)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(12),
	datab => \inst24|valor_interno\(12),
	datac => \inst2|process_0~2_combout\,
	datad => \inst700|valor_interno\(12),
	combout => \inst33|opres~53_combout\);

-- Location: LCCOMB_X22_Y8_N14
\inst50|$00000|auto_generated|result_node[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[12]~3_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(12)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(12),
	datac => \inst24|valor_interno\(12),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X20_Y6_N24
\inst202|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = (\inst700666|ACCB|valor_interno\(11) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(11),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X20_Y6_N25
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

-- Location: LCCOMB_X22_Y6_N20
\inst50|$00000|auto_generated|result_node[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[11]~4_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(11)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(11),
	datac => \inst2|process_0~2_combout\,
	datad => \inst24|valor_interno\(11),
	combout => \inst50|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst202|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = (\inst700666|ACCB|valor_interno\(9) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(9),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X22_Y4_N19
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

-- Location: LCCOMB_X23_Y6_N20
\inst33|opres~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~37_combout\ = (\inst700|valor_interno\(9) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(9))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(9),
	datab => \inst24|valor_interno\(9),
	datac => \inst2|process_0~2_combout\,
	datad => \inst14|valor_interno\(9),
	combout => \inst33|opres~37_combout\);

-- Location: LCCOMB_X23_Y6_N30
\inst50|$00000|auto_generated|result_node[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[9]~6_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(9))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(9),
	datab => \inst14|valor_interno\(9),
	datac => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst700666|ACCA|valor_interno[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[8]~feeder_combout\ = \inst24|valor_interno\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(8),
	combout => \inst700666|ACCA|valor_interno[8]~feeder_combout\);

-- Location: FF_X23_Y4_N5
\inst700666|ACCA|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[8]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LCCOMB_X23_Y4_N30
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

-- Location: FF_X23_Y4_N31
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(8));

-- Location: LCCOMB_X22_Y4_N16
\inst202|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(8))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(8),
	datab => \inst700666|ACCB|valor_interno\(8),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X22_Y4_N17
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

-- Location: LCCOMB_X23_Y5_N22
\inst33|opres[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~28_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(8) & ((!\inst50|$00000|auto_generated|result_node[8]~7_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(8) & ((\inst50|$00000|auto_generated|result_node[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[14]~10_combout\,
	datac => \inst700|valor_interno\(8),
	datad => \inst50|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst33|opres[8]~28_combout\);

-- Location: LCCOMB_X22_Y4_N22
\inst202|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = (\inst700666|ACCB|valor_interno\(7) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCB|valor_interno\(7),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux24~0_combout\);

-- Location: FF_X22_Y4_N23
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

-- Location: LCCOMB_X22_Y4_N6
\inst33|opres~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~26_combout\ = (\inst700|valor_interno\(7) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(7)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(7),
	datab => \inst700|valor_interno\(7),
	datac => \inst24|valor_interno\(7),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~26_combout\);

-- Location: LCCOMB_X22_Y4_N20
\inst33|opres[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~22_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(7))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(7),
	datac => \inst14|valor_interno\(7),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres[7]~22_combout\);

-- Location: LCCOMB_X22_Y7_N12
\inst33|opres[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~23_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(7) & ((!\inst33|opres[7]~22_combout\) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst700|valor_interno\(7) & ((\inst33|opres[7]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(7),
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst33|opres[14]~10_combout\,
	datad => \inst33|opres[7]~22_combout\,
	combout => \inst33|opres[7]~23_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst50|$00000|auto_generated|result_node[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[7]~8_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(7)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(7),
	datac => \inst24|valor_interno\(7),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X20_Y4_N2
\inst700666|ACCA|valor_interno[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(5),
	combout => \inst700666|ACCA|valor_interno[5]~feeder_combout\);

-- Location: FF_X20_Y4_N3
\inst700666|ACCA|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: FF_X20_Y7_N25
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(5));

-- Location: LCCOMB_X22_Y4_N10
\inst202|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(5))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(5),
	datab => \inst700666|ACCB|valor_interno\(5),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X22_Y4_N11
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

-- Location: LCCOMB_X20_Y7_N0
\inst202|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = (\inst700666|ACCB|valor_interno\(5) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700666|ACCB|valor_interno\(5),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X20_Y7_N1
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

-- Location: LCCOMB_X23_Y8_N4
\inst50|$00000|auto_generated|result_node[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[5]~10_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(5))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(5),
	datac => \inst14|valor_interno\(5),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X23_Y7_N24
\inst33|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_combout\ = (\inst700|valor_interno\(4) & ((\inst50|$00000|auto_generated|result_node[4]~11_combout\ & (\inst33|Add0~9\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst33|Add0~9\)))) # 
-- (!\inst700|valor_interno\(4) & ((\inst50|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst33|Add0~9\)) # (!\inst50|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst33|Add0~9\) # (GND)))))
-- \inst33|Add0~11\ = CARRY((\inst700|valor_interno\(4) & (!\inst50|$00000|auto_generated|result_node[4]~11_combout\ & !\inst33|Add0~9\)) # (!\inst700|valor_interno\(4) & ((!\inst33|Add0~9\) # (!\inst50|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(4),
	datab => \inst50|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst33|Add0~9\,
	combout => \inst33|Add0~10_combout\,
	cout => \inst33|Add0~11\);

-- Location: LCCOMB_X23_Y7_N26
\inst33|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~12_combout\ = ((\inst700|valor_interno\(5) $ (\inst50|$00000|auto_generated|result_node[5]~10_combout\ $ (!\inst33|Add0~11\)))) # (GND)
-- \inst33|Add0~13\ = CARRY((\inst700|valor_interno\(5) & ((\inst50|$00000|auto_generated|result_node[5]~10_combout\) # (!\inst33|Add0~11\))) # (!\inst700|valor_interno\(5) & (\inst50|$00000|auto_generated|result_node[5]~10_combout\ & !\inst33|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(5),
	datab => \inst50|$00000|auto_generated|result_node[5]~10_combout\,
	datad => VCC,
	cin => \inst33|Add0~11\,
	combout => \inst33|Add0~12_combout\,
	cout => \inst33|Add0~13\);

-- Location: LCCOMB_X23_Y7_N28
\inst33|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\inst700|valor_interno\(6) & ((\inst50|$00000|auto_generated|result_node[6]~9_combout\ & (\inst33|Add0~13\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst33|Add0~13\)))) # 
-- (!\inst700|valor_interno\(6) & ((\inst50|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst33|Add0~13\)) # (!\inst50|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst33|Add0~13\) # (GND)))))
-- \inst33|Add0~15\ = CARRY((\inst700|valor_interno\(6) & (!\inst50|$00000|auto_generated|result_node[6]~9_combout\ & !\inst33|Add0~13\)) # (!\inst700|valor_interno\(6) & ((!\inst33|Add0~13\) # (!\inst50|$00000|auto_generated|result_node[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(6),
	datab => \inst50|$00000|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

-- Location: LCCOMB_X23_Y7_N30
\inst33|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~16_combout\ = ((\inst700|valor_interno\(7) $ (\inst50|$00000|auto_generated|result_node[7]~8_combout\ $ (!\inst33|Add0~15\)))) # (GND)
-- \inst33|Add0~17\ = CARRY((\inst700|valor_interno\(7) & ((\inst50|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst33|Add0~15\))) # (!\inst700|valor_interno\(7) & (\inst50|$00000|auto_generated|result_node[7]~8_combout\ & !\inst33|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(7),
	datab => \inst50|$00000|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \inst33|Add0~15\,
	combout => \inst33|Add0~16_combout\,
	cout => \inst33|Add0~17\);

-- Location: LCCOMB_X22_Y7_N10
\inst33|opres[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~24_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[7]~23_combout\ & (\inst700|valor_interno\(6))) # (!\inst33|opres[7]~23_combout\ & ((\inst33|Add0~16_combout\))))) # (!\inst33|opres[14]~9_combout\ & 
-- (((\inst33|opres[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(6),
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst33|opres[7]~23_combout\,
	datad => \inst33|Add0~16_combout\,
	combout => \inst33|opres[7]~24_combout\);

-- Location: LCCOMB_X22_Y7_N14
\inst33|Add2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~1_cout\ = CARRY(\inst40|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	cout => \inst33|Add2~1_cout\);

-- Location: LCCOMB_X22_Y7_N16
\inst33|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~2_combout\ = (\inst50|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst700|valor_interno\(0) & (!\inst33|Add2~1_cout\)) # (!\inst700|valor_interno\(0) & ((\inst33|Add2~1_cout\) # (GND))))) # 
-- (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst700|valor_interno\(0) & (\inst33|Add2~1_cout\ & VCC)) # (!\inst700|valor_interno\(0) & (!\inst33|Add2~1_cout\))))
-- \inst33|Add2~3\ = CARRY((\inst50|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst33|Add2~1_cout\) # (!\inst700|valor_interno\(0)))) # (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst700|valor_interno\(0) & 
-- !\inst33|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \inst700|valor_interno\(0),
	datad => VCC,
	cin => \inst33|Add2~1_cout\,
	combout => \inst33|Add2~2_combout\,
	cout => \inst33|Add2~3\);

-- Location: LCCOMB_X22_Y7_N18
\inst33|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~4_combout\ = ((\inst50|$00000|auto_generated|result_node[1]~14_combout\ $ (\inst700|valor_interno\(1) $ (\inst33|Add2~3\)))) # (GND)
-- \inst33|Add2~5\ = CARRY((\inst50|$00000|auto_generated|result_node[1]~14_combout\ & (\inst700|valor_interno\(1) & !\inst33|Add2~3\)) # (!\inst50|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst700|valor_interno\(1)) # (!\inst33|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst700|valor_interno\(1),
	datad => VCC,
	cin => \inst33|Add2~3\,
	combout => \inst33|Add2~4_combout\,
	cout => \inst33|Add2~5\);

-- Location: LCCOMB_X22_Y7_N20
\inst33|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~6_combout\ = (\inst700|valor_interno\(2) & ((\inst50|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst33|Add2~5\)) # (!\inst50|$00000|auto_generated|result_node[2]~13_combout\ & (\inst33|Add2~5\ & VCC)))) # 
-- (!\inst700|valor_interno\(2) & ((\inst50|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst33|Add2~5\) # (GND))) # (!\inst50|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst33|Add2~5\))))
-- \inst33|Add2~7\ = CARRY((\inst700|valor_interno\(2) & (\inst50|$00000|auto_generated|result_node[2]~13_combout\ & !\inst33|Add2~5\)) # (!\inst700|valor_interno\(2) & ((\inst50|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst33|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(2),
	datab => \inst50|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst33|Add2~5\,
	combout => \inst33|Add2~6_combout\,
	cout => \inst33|Add2~7\);

-- Location: LCCOMB_X22_Y7_N22
\inst33|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~8_combout\ = ((\inst700|valor_interno\(3) $ (\inst50|$00000|auto_generated|result_node[3]~12_combout\ $ (\inst33|Add2~7\)))) # (GND)
-- \inst33|Add2~9\ = CARRY((\inst700|valor_interno\(3) & ((!\inst33|Add2~7\) # (!\inst50|$00000|auto_generated|result_node[3]~12_combout\))) # (!\inst700|valor_interno\(3) & (!\inst50|$00000|auto_generated|result_node[3]~12_combout\ & !\inst33|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(3),
	datab => \inst50|$00000|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \inst33|Add2~7\,
	combout => \inst33|Add2~8_combout\,
	cout => \inst33|Add2~9\);

-- Location: LCCOMB_X22_Y7_N24
\inst33|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~10_combout\ = (\inst50|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst700|valor_interno\(4) & (!\inst33|Add2~9\)) # (!\inst700|valor_interno\(4) & ((\inst33|Add2~9\) # (GND))))) # 
-- (!\inst50|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst700|valor_interno\(4) & (\inst33|Add2~9\ & VCC)) # (!\inst700|valor_interno\(4) & (!\inst33|Add2~9\))))
-- \inst33|Add2~11\ = CARRY((\inst50|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst33|Add2~9\) # (!\inst700|valor_interno\(4)))) # (!\inst50|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst700|valor_interno\(4) & !\inst33|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst700|valor_interno\(4),
	datad => VCC,
	cin => \inst33|Add2~9\,
	combout => \inst33|Add2~10_combout\,
	cout => \inst33|Add2~11\);

-- Location: LCCOMB_X22_Y7_N26
\inst33|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~12_combout\ = ((\inst50|$00000|auto_generated|result_node[5]~10_combout\ $ (\inst700|valor_interno\(5) $ (\inst33|Add2~11\)))) # (GND)
-- \inst33|Add2~13\ = CARRY((\inst50|$00000|auto_generated|result_node[5]~10_combout\ & (\inst700|valor_interno\(5) & !\inst33|Add2~11\)) # (!\inst50|$00000|auto_generated|result_node[5]~10_combout\ & ((\inst700|valor_interno\(5)) # (!\inst33|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \inst700|valor_interno\(5),
	datad => VCC,
	cin => \inst33|Add2~11\,
	combout => \inst33|Add2~12_combout\,
	cout => \inst33|Add2~13\);

-- Location: LCCOMB_X22_Y7_N28
\inst33|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~14_combout\ = (\inst50|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst700|valor_interno\(6) & (!\inst33|Add2~13\)) # (!\inst700|valor_interno\(6) & ((\inst33|Add2~13\) # (GND))))) # 
-- (!\inst50|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst700|valor_interno\(6) & (\inst33|Add2~13\ & VCC)) # (!\inst700|valor_interno\(6) & (!\inst33|Add2~13\))))
-- \inst33|Add2~15\ = CARRY((\inst50|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst33|Add2~13\) # (!\inst700|valor_interno\(6)))) # (!\inst50|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst700|valor_interno\(6) & !\inst33|Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst700|valor_interno\(6),
	datad => VCC,
	cin => \inst33|Add2~13\,
	combout => \inst33|Add2~14_combout\,
	cout => \inst33|Add2~15\);

-- Location: LCCOMB_X22_Y7_N30
\inst33|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~16_combout\ = ((\inst700|valor_interno\(7) $ (\inst50|$00000|auto_generated|result_node[7]~8_combout\ $ (\inst33|Add2~15\)))) # (GND)
-- \inst33|Add2~17\ = CARRY((\inst700|valor_interno\(7) & ((!\inst33|Add2~15\) # (!\inst50|$00000|auto_generated|result_node[7]~8_combout\))) # (!\inst700|valor_interno\(7) & (!\inst50|$00000|auto_generated|result_node[7]~8_combout\ & !\inst33|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(7),
	datab => \inst50|$00000|auto_generated|result_node[7]~8_combout\,
	datad => VCC,
	cin => \inst33|Add2~15\,
	combout => \inst33|Add2~16_combout\,
	cout => \inst33|Add2~17\);

-- Location: LCCOMB_X22_Y7_N4
\inst33|opres[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~25_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|Add2~16_combout\) # (\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & (\inst33|opres[7]~24_combout\ & ((!\inst33|opres[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[7]~24_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|Add2~16_combout\,
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[7]~25_combout\);

-- Location: LCCOMB_X22_Y7_N2
\inst33|opres[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~27_combout\ = (\inst33|opres[7]~25_combout\ & ((\inst33|opres~26_combout\) # ((!\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[7]~25_combout\ & (((\inst33|opres[0]~7_combout\ & \inst700|valor_interno\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~26_combout\,
	datab => \inst33|opres[7]~25_combout\,
	datac => \inst33|opres[0]~7_combout\,
	datad => \inst700|valor_interno\(8),
	combout => \inst33|opres[7]~27_combout\);

-- Location: LCCOMB_X22_Y7_N0
\inst33|opres[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(7))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[7]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(7),
	datac => \inst33|opres[7]~27_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(7));

-- Location: LCCOMB_X22_Y7_N8
\inst20|Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux24~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(7),
	combout => \inst20|Mux24~0_combout\);

-- Location: FF_X22_Y7_N9
\inst24|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux24~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(7));

-- Location: FF_X22_Y4_N15
\inst700666|ACCB|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	asdata => \inst24|valor_interno\(7),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(7));

-- Location: LCCOMB_X27_Y4_N28
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

-- Location: FF_X27_Y4_N29
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(7));

-- Location: LCCOMB_X22_Y4_N28
\inst202|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(7)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(7),
	datab => \inst700666|ACCA|valor_interno\(7),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X22_Y4_N29
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

-- Location: LCCOMB_X23_Y6_N0
\inst33|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\inst700|valor_interno\(8) & ((\inst50|$00000|auto_generated|result_node[8]~7_combout\ & (\inst33|Add0~17\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst33|Add0~17\)))) # 
-- (!\inst700|valor_interno\(8) & ((\inst50|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst33|Add0~17\)) # (!\inst50|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst33|Add0~17\) # (GND)))))
-- \inst33|Add0~19\ = CARRY((\inst700|valor_interno\(8) & (!\inst50|$00000|auto_generated|result_node[8]~7_combout\ & !\inst33|Add0~17\)) # (!\inst700|valor_interno\(8) & ((!\inst33|Add0~17\) # (!\inst50|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(8),
	datab => \inst50|$00000|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

-- Location: LCCOMB_X23_Y5_N26
\inst33|opres[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~29_combout\ = (\inst33|opres[8]~28_combout\ & (((\inst700|valor_interno\(7))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[8]~28_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~28_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(7),
	datad => \inst33|Add0~18_combout\,
	combout => \inst33|opres[8]~29_combout\);

-- Location: LCCOMB_X23_Y5_N10
\inst33|opres[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~30_combout\ = (\inst33|opres[0]~7_combout\ & (((\inst700|valor_interno\(9)) # (\inst33|opres[14]~8_combout\)))) # (!\inst33|opres[0]~7_combout\ & (\inst33|opres[8]~29_combout\ & ((!\inst33|opres[14]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~29_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst700|valor_interno\(9),
	datad => \inst33|opres[14]~8_combout\,
	combout => \inst33|opres[8]~30_combout\);

-- Location: LCCOMB_X22_Y4_N2
\inst202|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = (\inst700666|ACCB|valor_interno\(8) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst700666|ACCB|valor_interno\(8),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux23~0_combout\);

-- Location: FF_X22_Y4_N3
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

-- Location: LCCOMB_X23_Y5_N30
\inst33|opres~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~31_combout\ = (\inst700|valor_interno\(8) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(8))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(8),
	datab => \inst24|valor_interno\(8),
	datac => \inst14|valor_interno\(8),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~31_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst33|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~18_combout\ = (\inst50|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst700|valor_interno\(8) & (!\inst33|Add2~17\)) # (!\inst700|valor_interno\(8) & ((\inst33|Add2~17\) # (GND))))) # 
-- (!\inst50|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst700|valor_interno\(8) & (\inst33|Add2~17\ & VCC)) # (!\inst700|valor_interno\(8) & (!\inst33|Add2~17\))))
-- \inst33|Add2~19\ = CARRY((\inst50|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst33|Add2~17\) # (!\inst700|valor_interno\(8)))) # (!\inst50|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst700|valor_interno\(8) & !\inst33|Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \inst700|valor_interno\(8),
	datad => VCC,
	cin => \inst33|Add2~17\,
	combout => \inst33|Add2~18_combout\,
	cout => \inst33|Add2~19\);

-- Location: LCCOMB_X23_Y5_N6
\inst33|opres[8]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~32_combout\ = (\inst33|opres[8]~30_combout\ & (((\inst33|opres~31_combout\)) # (!\inst33|opres[14]~8_combout\))) # (!\inst33|opres[8]~30_combout\ & (\inst33|opres[14]~8_combout\ & ((\inst33|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~30_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|opres~31_combout\,
	datad => \inst33|Add2~18_combout\,
	combout => \inst33|opres[8]~32_combout\);

-- Location: LCCOMB_X23_Y5_N12
\inst33|opres[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(8)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[8]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[8]~32_combout\,
	datac => \inst33|opres\(8),
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(8));

-- Location: LCCOMB_X23_Y5_N18
\inst20|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux23~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(8),
	combout => \inst20|Mux23~0_combout\);

-- Location: FF_X23_Y5_N19
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

-- Location: LCCOMB_X23_Y5_N0
\inst50|$00000|auto_generated|result_node[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[8]~7_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(8))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|valor_interno\(8),
	datac => \inst14|valor_interno\(8),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X22_Y6_N2
\inst33|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~20_combout\ = ((\inst50|$00000|auto_generated|result_node[9]~6_combout\ $ (\inst700|valor_interno\(9) $ (\inst33|Add2~19\)))) # (GND)
-- \inst33|Add2~21\ = CARRY((\inst50|$00000|auto_generated|result_node[9]~6_combout\ & (\inst700|valor_interno\(9) & !\inst33|Add2~19\)) # (!\inst50|$00000|auto_generated|result_node[9]~6_combout\ & ((\inst700|valor_interno\(9)) # (!\inst33|Add2~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst700|valor_interno\(9),
	datad => VCC,
	cin => \inst33|Add2~19\,
	combout => \inst33|Add2~20_combout\,
	cout => \inst33|Add2~21\);

-- Location: LCCOMB_X23_Y6_N28
\inst33|opres[9]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~33_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(9))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(9),
	datab => \inst14|valor_interno\(9),
	datac => \inst2|process_0~2_combout\,
	combout => \inst33|opres[9]~33_combout\);

-- Location: LCCOMB_X23_Y6_N22
\inst33|opres[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~34_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(9) & ((!\inst33|opres[14]~10_combout\) # (!\inst33|opres[9]~33_combout\))) # 
-- (!\inst700|valor_interno\(9) & (\inst33|opres[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(9),
	datab => \inst33|opres[9]~33_combout\,
	datac => \inst33|opres[14]~9_combout\,
	datad => \inst33|opres[14]~10_combout\,
	combout => \inst33|opres[9]~34_combout\);

-- Location: LCCOMB_X23_Y6_N2
\inst33|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~20_combout\ = ((\inst50|$00000|auto_generated|result_node[9]~6_combout\ $ (\inst700|valor_interno\(9) $ (!\inst33|Add0~19\)))) # (GND)
-- \inst33|Add0~21\ = CARRY((\inst50|$00000|auto_generated|result_node[9]~6_combout\ & ((\inst700|valor_interno\(9)) # (!\inst33|Add0~19\))) # (!\inst50|$00000|auto_generated|result_node[9]~6_combout\ & (\inst700|valor_interno\(9) & !\inst33|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst700|valor_interno\(9),
	datad => VCC,
	cin => \inst33|Add0~19\,
	combout => \inst33|Add0~20_combout\,
	cout => \inst33|Add0~21\);

-- Location: LCCOMB_X20_Y6_N26
\inst33|opres[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~35_combout\ = (\inst33|opres[9]~34_combout\ & ((\inst700|valor_interno\(8)) # ((!\inst33|opres[14]~9_combout\)))) # (!\inst33|opres[9]~34_combout\ & (((\inst33|opres[14]~9_combout\ & \inst33|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[9]~34_combout\,
	datab => \inst700|valor_interno\(8),
	datac => \inst33|opres[14]~9_combout\,
	datad => \inst33|Add0~20_combout\,
	combout => \inst33|opres[9]~35_combout\);

-- Location: LCCOMB_X20_Y6_N28
\inst33|opres[9]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~36_combout\ = (\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\) # ((\inst33|Add2~20_combout\)))) # (!\inst33|opres[14]~8_combout\ & (!\inst33|opres[0]~7_combout\ & ((\inst33|opres[9]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst33|Add2~20_combout\,
	datad => \inst33|opres[9]~35_combout\,
	combout => \inst33|opres[9]~36_combout\);

-- Location: LCCOMB_X20_Y6_N14
\inst33|opres[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~38_combout\ = (\inst33|opres[0]~7_combout\ & ((\inst33|opres[9]~36_combout\ & (\inst33|opres~37_combout\)) # (!\inst33|opres[9]~36_combout\ & ((\inst700|valor_interno\(10)))))) # (!\inst33|opres[0]~7_combout\ & 
-- (((\inst33|opres[9]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~37_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst700|valor_interno\(10),
	datad => \inst33|opres[9]~36_combout\,
	combout => \inst33|opres[9]~38_combout\);

-- Location: LCCOMB_X20_Y6_N16
\inst33|opres[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(9))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[9]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(9),
	datac => \inst33|Equal0~0clkctrl_outclk\,
	datad => \inst33|opres[9]~38_combout\,
	combout => \inst33|opres\(9));

-- Location: LCCOMB_X20_Y6_N20
\inst20|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux22~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(9),
	combout => \inst20|Mux22~0_combout\);

-- Location: FF_X20_Y6_N21
\inst24|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux22~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(9));

-- Location: LCCOMB_X22_Y4_N12
\inst700666|ACCB|valor_interno[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[9]~feeder_combout\ = \inst24|valor_interno\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(9),
	combout => \inst700666|ACCB|valor_interno[9]~feeder_combout\);

-- Location: FF_X22_Y4_N13
\inst700666|ACCB|valor_interno[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[9]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: LCCOMB_X20_Y4_N8
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

-- Location: FF_X20_Y4_N9
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(9));

-- Location: LCCOMB_X22_Y4_N24
\inst202|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(9)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(9),
	datab => \inst700666|ACCA|valor_interno\(9),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X22_Y4_N25
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

-- Location: LCCOMB_X22_Y5_N20
\inst202|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = (\inst700666|ACCB|valor_interno\(10) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(10),
	datad => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X22_Y5_N21
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

-- Location: LCCOMB_X22_Y5_N10
\inst50|$00000|auto_generated|result_node[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[10]~5_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(10)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(10),
	datac => \inst24|valor_interno\(10),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X22_Y5_N0
\inst33|opres[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~39_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(10) & ((!\inst50|$00000|auto_generated|result_node[10]~5_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(10),
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst33|opres[14]~10_combout\,
	datad => \inst50|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst33|opres[10]~39_combout\);

-- Location: LCCOMB_X23_Y6_N4
\inst33|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_combout\ = (\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (\inst33|Add0~21\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add0~21\)))) # 
-- (!\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add0~21\)) # (!\inst50|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst33|Add0~21\) # (GND)))))
-- \inst33|Add0~23\ = CARRY((\inst700|valor_interno\(10) & (!\inst50|$00000|auto_generated|result_node[10]~5_combout\ & !\inst33|Add0~21\)) # (!\inst700|valor_interno\(10) & ((!\inst33|Add0~21\) # 
-- (!\inst50|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(10),
	datab => \inst50|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst33|Add0~21\,
	combout => \inst33|Add0~22_combout\,
	cout => \inst33|Add0~23\);

-- Location: LCCOMB_X22_Y5_N14
\inst33|opres[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~40_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[10]~39_combout\ & (\inst700|valor_interno\(9))) # (!\inst33|opres[10]~39_combout\ & ((\inst33|Add0~22_combout\))))) # (!\inst33|opres[14]~9_combout\ & 
-- (((\inst33|opres[10]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst700|valor_interno\(9),
	datac => \inst33|opres[10]~39_combout\,
	datad => \inst33|Add0~22_combout\,
	combout => \inst33|opres[10]~40_combout\);

-- Location: LCCOMB_X22_Y5_N8
\inst33|opres[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~41_combout\ = (\inst33|opres[0]~7_combout\ & ((\inst700|valor_interno\(11)) # ((\inst33|opres[14]~8_combout\)))) # (!\inst33|opres[0]~7_combout\ & (((!\inst33|opres[14]~8_combout\ & \inst33|opres[10]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~7_combout\,
	datab => \inst700|valor_interno\(11),
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|opres[10]~40_combout\,
	combout => \inst33|opres[10]~41_combout\);

-- Location: LCCOMB_X22_Y6_N4
\inst33|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~22_combout\ = (\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add2~21\)) # (!\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (\inst33|Add2~21\ & VCC)))) # 
-- (!\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst33|Add2~21\) # (GND))) # (!\inst50|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add2~21\))))
-- \inst33|Add2~23\ = CARRY((\inst700|valor_interno\(10) & (\inst50|$00000|auto_generated|result_node[10]~5_combout\ & !\inst33|Add2~21\)) # (!\inst700|valor_interno\(10) & ((\inst50|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst33|Add2~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(10),
	datab => \inst50|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst33|Add2~21\,
	combout => \inst33|Add2~22_combout\,
	cout => \inst33|Add2~23\);

-- Location: LCCOMB_X22_Y5_N6
\inst33|opres~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~42_combout\ = (\inst700|valor_interno\(10) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(10)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(10),
	datab => \inst14|valor_interno\(10),
	datac => \inst24|valor_interno\(10),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~42_combout\);

-- Location: LCCOMB_X22_Y5_N12
\inst33|opres[10]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~43_combout\ = (\inst33|opres[14]~8_combout\ & ((\inst33|opres[10]~41_combout\ & ((\inst33|opres~42_combout\))) # (!\inst33|opres[10]~41_combout\ & (\inst33|Add2~22_combout\)))) # (!\inst33|opres[14]~8_combout\ & 
-- (\inst33|opres[10]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[10]~41_combout\,
	datac => \inst33|Add2~22_combout\,
	datad => \inst33|opres~42_combout\,
	combout => \inst33|opres[10]~43_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst33|opres[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(10) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(10)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[10]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[10]~43_combout\,
	datab => \inst33|opres\(10),
	datac => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(10));

-- Location: LCCOMB_X22_Y5_N26
\inst20|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux21~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(10),
	combout => \inst20|Mux21~0_combout\);

-- Location: FF_X22_Y5_N27
\inst24|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux21~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(10));

-- Location: LCCOMB_X22_Y4_N26
\inst700666|ACCB|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(10),
	combout => \inst700666|ACCB|valor_interno[10]~feeder_combout\);

-- Location: FF_X22_Y4_N27
\inst700666|ACCB|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LCCOMB_X27_Y4_N6
\inst700666|ACCA|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(10),
	combout => \inst700666|ACCA|valor_interno[10]~feeder_combout\);

-- Location: FF_X27_Y4_N7
\inst700666|ACCA|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: LCCOMB_X22_Y4_N4
\inst202|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(10)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(10),
	datab => \inst700666|ACCA|valor_interno\(10),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X22_Y4_N5
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

-- Location: LCCOMB_X22_Y6_N6
\inst33|Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~24_combout\ = ((\inst700|valor_interno\(11) $ (\inst50|$00000|auto_generated|result_node[11]~4_combout\ $ (\inst33|Add2~23\)))) # (GND)
-- \inst33|Add2~25\ = CARRY((\inst700|valor_interno\(11) & ((!\inst33|Add2~23\) # (!\inst50|$00000|auto_generated|result_node[11]~4_combout\))) # (!\inst700|valor_interno\(11) & (!\inst50|$00000|auto_generated|result_node[11]~4_combout\ & 
-- !\inst33|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(11),
	datab => \inst50|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst33|Add2~23\,
	combout => \inst33|Add2~24_combout\,
	cout => \inst33|Add2~25\);

-- Location: LCCOMB_X20_Y6_N0
\inst33|opres[11]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~44_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(11))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(11),
	datac => \inst2|process_0~2_combout\,
	datad => \inst14|valor_interno\(11),
	combout => \inst33|opres[11]~44_combout\);

-- Location: LCCOMB_X20_Y6_N10
\inst33|opres[11]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~45_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(11) & ((!\inst33|opres[11]~44_combout\) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst700|valor_interno\(11) & ((\inst33|opres[11]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(11),
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst33|opres[14]~10_combout\,
	datad => \inst33|opres[11]~44_combout\,
	combout => \inst33|opres[11]~45_combout\);

-- Location: LCCOMB_X23_Y6_N6
\inst33|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\inst700|valor_interno\(11) $ (\inst50|$00000|auto_generated|result_node[11]~4_combout\ $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\inst700|valor_interno\(11) & ((\inst50|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst33|Add0~23\))) # (!\inst700|valor_interno\(11) & (\inst50|$00000|auto_generated|result_node[11]~4_combout\ & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(11),
	datab => \inst50|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

-- Location: LCCOMB_X20_Y6_N8
\inst33|opres[11]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~46_combout\ = (\inst33|opres[11]~45_combout\ & (((\inst700|valor_interno\(10))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[11]~45_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[11]~45_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(10),
	datad => \inst33|Add0~24_combout\,
	combout => \inst33|opres[11]~46_combout\);

-- Location: LCCOMB_X20_Y6_N30
\inst33|opres[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~47_combout\ = (\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\) # ((\inst33|Add2~24_combout\)))) # (!\inst33|opres[14]~8_combout\ & (!\inst33|opres[0]~7_combout\ & ((\inst33|opres[11]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst33|Add2~24_combout\,
	datad => \inst33|opres[11]~46_combout\,
	combout => \inst33|opres[11]~47_combout\);

-- Location: LCCOMB_X20_Y6_N12
\inst33|opres~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~48_combout\ = (\inst700|valor_interno\(11) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(11))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(11),
	datab => \inst700|valor_interno\(11),
	datac => \inst2|process_0~2_combout\,
	datad => \inst14|valor_interno\(11),
	combout => \inst33|opres~48_combout\);

-- Location: LCCOMB_X20_Y6_N22
\inst33|opres[11]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~49_combout\ = (\inst33|opres[11]~47_combout\ & (((\inst33|opres~48_combout\)) # (!\inst33|opres[0]~7_combout\))) # (!\inst33|opres[11]~47_combout\ & (\inst33|opres[0]~7_combout\ & (\inst700|valor_interno\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[11]~47_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst700|valor_interno\(12),
	datad => \inst33|opres~48_combout\,
	combout => \inst33|opres[11]~49_combout\);

-- Location: LCCOMB_X20_Y6_N2
\inst33|opres[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(11) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(11)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[11]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[11]~49_combout\,
	datab => \inst33|opres\(11),
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(11));

-- Location: LCCOMB_X20_Y6_N6
\inst20|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux20~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(11),
	combout => \inst20|Mux20~0_combout\);

-- Location: FF_X20_Y6_N7
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

-- Location: LCCOMB_X20_Y6_N4
\inst700666|ACCB|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCB|valor_interno[11]~feeder_combout\);

-- Location: FF_X20_Y6_N5
\inst700666|ACCB|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: LCCOMB_X27_Y4_N0
\inst700666|ACCA|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|ACCA|valor_interno[11]~feeder_combout\);

-- Location: FF_X27_Y4_N1
\inst700666|ACCA|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LCCOMB_X24_Y4_N0
\inst202|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(11)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(11),
	datab => \inst700666|ACCA|valor_interno\(11),
	datac => \inst700|valor_interno[13]~2_combout\,
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X24_Y4_N1
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

-- Location: LCCOMB_X22_Y6_N8
\inst33|Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~26_combout\ = (\inst700|valor_interno\(12) & ((\inst50|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst33|Add2~25\)) # (!\inst50|$00000|auto_generated|result_node[12]~3_combout\ & (\inst33|Add2~25\ & VCC)))) # 
-- (!\inst700|valor_interno\(12) & ((\inst50|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst33|Add2~25\) # (GND))) # (!\inst50|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst33|Add2~25\))))
-- \inst33|Add2~27\ = CARRY((\inst700|valor_interno\(12) & (\inst50|$00000|auto_generated|result_node[12]~3_combout\ & !\inst33|Add2~25\)) # (!\inst700|valor_interno\(12) & ((\inst50|$00000|auto_generated|result_node[12]~3_combout\) # (!\inst33|Add2~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(12),
	datab => \inst50|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst33|Add2~25\,
	combout => \inst33|Add2~26_combout\,
	cout => \inst33|Add2~27\);

-- Location: LCCOMB_X22_Y5_N2
\inst33|opres[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~50_combout\ = (\inst33|opres[14]~9_combout\ & (((\inst33|opres[14]~10_combout\)))) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(12) & ((!\inst50|$00000|auto_generated|result_node[12]~3_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(12) & ((\inst50|$00000|auto_generated|result_node[12]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst700|valor_interno\(12),
	datac => \inst33|opres[14]~10_combout\,
	datad => \inst50|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst33|opres[12]~50_combout\);

-- Location: LCCOMB_X23_Y6_N8
\inst33|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_combout\ = (\inst50|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst700|valor_interno\(12) & (\inst33|Add0~25\ & VCC)) # (!\inst700|valor_interno\(12) & (!\inst33|Add0~25\)))) # 
-- (!\inst50|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst700|valor_interno\(12) & (!\inst33|Add0~25\)) # (!\inst700|valor_interno\(12) & ((\inst33|Add0~25\) # (GND)))))
-- \inst33|Add0~27\ = CARRY((\inst50|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst700|valor_interno\(12) & !\inst33|Add0~25\)) # (!\inst50|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst33|Add0~25\) # 
-- (!\inst700|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \inst700|valor_interno\(12),
	datad => VCC,
	cin => \inst33|Add0~25\,
	combout => \inst33|Add0~26_combout\,
	cout => \inst33|Add0~27\);

-- Location: LCCOMB_X22_Y5_N4
\inst33|opres[12]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~51_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[12]~50_combout\ & (\inst700|valor_interno\(11))) # (!\inst33|opres[12]~50_combout\ & ((\inst33|Add0~26_combout\))))) # (!\inst33|opres[14]~9_combout\ & 
-- (\inst33|opres[12]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[12]~50_combout\,
	datac => \inst700|valor_interno\(11),
	datad => \inst33|Add0~26_combout\,
	combout => \inst33|opres[12]~51_combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst33|opres[12]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~52_combout\ = (\inst33|opres[0]~7_combout\ & ((\inst700|valor_interno\(13)) # ((\inst33|opres[14]~8_combout\)))) # (!\inst33|opres[0]~7_combout\ & (((!\inst33|opres[14]~8_combout\ & \inst33|opres[12]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~7_combout\,
	datab => \inst700|valor_interno\(13),
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|opres[12]~51_combout\,
	combout => \inst33|opres[12]~52_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst33|opres[12]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~54_combout\ = (\inst33|opres[14]~8_combout\ & ((\inst33|opres[12]~52_combout\ & (\inst33|opres~53_combout\)) # (!\inst33|opres[12]~52_combout\ & ((\inst33|Add2~26_combout\))))) # (!\inst33|opres[14]~8_combout\ & 
-- (((\inst33|opres[12]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~53_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|Add2~26_combout\,
	datad => \inst33|opres[12]~52_combout\,
	combout => \inst33|opres[12]~54_combout\);

-- Location: LCCOMB_X22_Y5_N18
\inst33|opres[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(12))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[12]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(12),
	datac => \inst33|Equal0~0clkctrl_outclk\,
	datad => \inst33|opres[12]~54_combout\,
	combout => \inst33|opres\(12));

-- Location: LCCOMB_X22_Y5_N28
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

-- Location: FF_X22_Y5_N29
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

-- Location: FF_X25_Y4_N29
\inst700666|ACCA|valor_interno[12]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(12));

-- Location: LCCOMB_X22_Y4_N30
\inst202|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(12))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(12),
	datab => \inst700666|ACCB|valor_interno\(12),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700|valor_interno[13]~2_combout\,
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X22_Y4_N31
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

-- Location: LCCOMB_X24_Y4_N12
\inst33|opres[13]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~55_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(13)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datab => \inst14|valor_interno\(13),
	datac => \inst24|valor_interno\(13),
	combout => \inst33|opres[13]~55_combout\);

-- Location: LCCOMB_X24_Y4_N26
\inst33|opres[13]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~56_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(13) & ((!\inst33|opres[13]~55_combout\) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst700|valor_interno\(13) & ((\inst33|opres[13]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[14]~10_combout\,
	datac => \inst700|valor_interno\(13),
	datad => \inst33|opres[13]~55_combout\,
	combout => \inst33|opres[13]~56_combout\);

-- Location: LCCOMB_X23_Y4_N22
\inst50|$00000|auto_generated|result_node[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[13]~2_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(13)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(13),
	datac => \inst24|valor_interno\(13),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X23_Y6_N10
\inst33|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\inst50|$00000|auto_generated|result_node[13]~2_combout\ $ (\inst700|valor_interno\(13) $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\inst50|$00000|auto_generated|result_node[13]~2_combout\ & ((\inst700|valor_interno\(13)) # (!\inst33|Add0~27\))) # (!\inst50|$00000|auto_generated|result_node[13]~2_combout\ & (\inst700|valor_interno\(13) & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst700|valor_interno\(13),
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

-- Location: LCCOMB_X24_Y5_N8
\inst33|opres[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~57_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[13]~56_combout\ & (\inst700|valor_interno\(12))) # (!\inst33|opres[13]~56_combout\ & ((\inst33|Add0~28_combout\))))) # (!\inst33|opres[14]~9_combout\ & 
-- (((\inst33|opres[13]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst700|valor_interno\(12),
	datac => \inst33|opres[13]~56_combout\,
	datad => \inst33|Add0~28_combout\,
	combout => \inst33|opres[13]~57_combout\);

-- Location: LCCOMB_X22_Y6_N10
\inst33|Add2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~28_combout\ = ((\inst700|valor_interno\(13) $ (\inst50|$00000|auto_generated|result_node[13]~2_combout\ $ (\inst33|Add2~27\)))) # (GND)
-- \inst33|Add2~29\ = CARRY((\inst700|valor_interno\(13) & ((!\inst33|Add2~27\) # (!\inst50|$00000|auto_generated|result_node[13]~2_combout\))) # (!\inst700|valor_interno\(13) & (!\inst50|$00000|auto_generated|result_node[13]~2_combout\ & 
-- !\inst33|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(13),
	datab => \inst50|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst33|Add2~27\,
	combout => \inst33|Add2~28_combout\,
	cout => \inst33|Add2~29\);

-- Location: LCCOMB_X24_Y5_N22
\inst33|opres[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~58_combout\ = (\inst33|opres[0]~7_combout\ & (\inst33|opres[14]~8_combout\)) # (!\inst33|opres[0]~7_combout\ & ((\inst33|opres[14]~8_combout\ & ((\inst33|Add2~28_combout\))) # (!\inst33|opres[14]~8_combout\ & 
-- (\inst33|opres[13]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~7_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|opres[13]~57_combout\,
	datad => \inst33|Add2~28_combout\,
	combout => \inst33|opres[13]~58_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst33|opres[13]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~60_combout\ = (\inst33|opres[0]~7_combout\ & ((\inst33|opres[13]~58_combout\ & ((\inst33|opres~59_combout\))) # (!\inst33|opres[13]~58_combout\ & (\inst700|valor_interno\(14))))) # (!\inst33|opres[0]~7_combout\ & 
-- (((\inst33|opres[13]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst33|opres~59_combout\,
	datad => \inst33|opres[13]~58_combout\,
	combout => \inst33|opres[13]~60_combout\);

-- Location: LCCOMB_X24_Y5_N18
\inst33|opres[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(13))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[13]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(13),
	datac => \inst33|Equal0~0clkctrl_outclk\,
	datad => \inst33|opres[13]~60_combout\,
	combout => \inst33|opres\(13));

-- Location: LCCOMB_X24_Y5_N30
\inst20|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux18~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(13),
	combout => \inst20|Mux18~0_combout\);

-- Location: FF_X24_Y5_N31
\inst24|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux18~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(13));

-- Location: LCCOMB_X25_Y4_N6
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

-- Location: FF_X25_Y4_N7
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(13));

-- Location: LCCOMB_X24_Y4_N22
\inst202|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(13))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(13),
	datab => \inst700666|ACCB|valor_interno\(13),
	datac => \inst700|valor_interno[13]~2_combout\,
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X24_Y4_N23
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

-- Location: LCCOMB_X23_Y6_N12
\inst33|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~30_combout\ = (\inst700|valor_interno\(14) & ((\inst50|$00000|auto_generated|result_node[14]~1_combout\ & (\inst33|Add0~29\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst33|Add0~29\)))) # 
-- (!\inst700|valor_interno\(14) & ((\inst50|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst33|Add0~29\)) # (!\inst50|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst33|Add0~29\) # (GND)))))
-- \inst33|Add0~31\ = CARRY((\inst700|valor_interno\(14) & (!\inst50|$00000|auto_generated|result_node[14]~1_combout\ & !\inst33|Add0~29\)) # (!\inst700|valor_interno\(14) & ((!\inst33|Add0~29\) # 
-- (!\inst50|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst50|$00000|auto_generated|result_node[14]~1_combout\,
	datad => VCC,
	cin => \inst33|Add0~29\,
	combout => \inst33|Add0~30_combout\,
	cout => \inst33|Add0~31\);

-- Location: LCCOMB_X23_Y6_N24
\inst33|opres[14]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~62_combout\ = (\inst33|opres[14]~61_combout\ & (((\inst700|valor_interno\(13))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[14]~61_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~61_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(13),
	datad => \inst33|Add0~30_combout\,
	combout => \inst33|opres[14]~62_combout\);

-- Location: LCCOMB_X24_Y6_N30
\inst33|opres[14]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~63_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\ & ((\inst700|valor_interno\(15)))) # (!\inst33|opres[0]~7_combout\ & 
-- (\inst33|opres[14]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[14]~62_combout\,
	datac => \inst700|valor_interno\(15),
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[14]~63_combout\);

-- Location: LCCOMB_X23_Y9_N24
\inst33|opres~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~64_combout\ = (\inst700|valor_interno\(14) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(14))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(14),
	datab => \inst14|valor_interno\(14),
	datac => \inst700|valor_interno\(14),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~64_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst33|Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~30_combout\ = (\inst50|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst700|valor_interno\(14) & (!\inst33|Add2~29\)) # (!\inst700|valor_interno\(14) & ((\inst33|Add2~29\) # (GND))))) # 
-- (!\inst50|$00000|auto_generated|result_node[14]~1_combout\ & ((\inst700|valor_interno\(14) & (\inst33|Add2~29\ & VCC)) # (!\inst700|valor_interno\(14) & (!\inst33|Add2~29\))))
-- \inst33|Add2~31\ = CARRY((\inst50|$00000|auto_generated|result_node[14]~1_combout\ & ((!\inst33|Add2~29\) # (!\inst700|valor_interno\(14)))) # (!\inst50|$00000|auto_generated|result_node[14]~1_combout\ & (!\inst700|valor_interno\(14) & 
-- !\inst33|Add2~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \inst700|valor_interno\(14),
	datad => VCC,
	cin => \inst33|Add2~29\,
	combout => \inst33|Add2~30_combout\,
	cout => \inst33|Add2~31\);

-- Location: LCCOMB_X24_Y6_N12
\inst33|opres[14]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~65_combout\ = (\inst33|opres[14]~63_combout\ & (((\inst33|opres~64_combout\)) # (!\inst33|opres[14]~8_combout\))) # (!\inst33|opres[14]~63_combout\ & (\inst33|opres[14]~8_combout\ & ((\inst33|Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~63_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|opres~64_combout\,
	datad => \inst33|Add2~30_combout\,
	combout => \inst33|opres[14]~65_combout\);

-- Location: LCCOMB_X24_Y6_N10
\inst33|opres[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(14)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[14]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~65_combout\,
	datac => \inst33|opres\(14),
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(14));

-- Location: LCCOMB_X24_Y6_N6
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

-- Location: FF_X24_Y6_N7
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

-- Location: LCCOMB_X23_Y9_N16
\inst700666|ACCB|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|ACCB|valor_interno[14]~feeder_combout\);

-- Location: FF_X23_Y9_N17
\inst700666|ACCB|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: LCCOMB_X27_Y9_N20
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

-- Location: FF_X27_Y9_N21
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(14));

-- Location: LCCOMB_X23_Y9_N6
\inst202|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(14)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[13]~2_combout\,
	datab => \inst700666|ACCB|valor_interno\(14),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700666|ACCA|valor_interno\(14),
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X23_Y9_N7
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

-- Location: LCCOMB_X23_Y6_N14
\inst33|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~32_combout\ = ((\inst700|valor_interno\(15) $ (\inst50|$00000|auto_generated|result_node[15]~0_combout\ $ (!\inst33|Add0~31\)))) # (GND)
-- \inst33|Add0~33\ = CARRY((\inst700|valor_interno\(15) & ((\inst50|$00000|auto_generated|result_node[15]~0_combout\) # (!\inst33|Add0~31\))) # (!\inst700|valor_interno\(15) & (\inst50|$00000|auto_generated|result_node[15]~0_combout\ & !\inst33|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(15),
	datab => \inst50|$00000|auto_generated|result_node[15]~0_combout\,
	datad => VCC,
	cin => \inst33|Add0~31\,
	combout => \inst33|Add0~32_combout\,
	cout => \inst33|Add0~33\);

-- Location: LCCOMB_X23_Y6_N16
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

-- Location: LCCOMB_X23_Y6_N18
\inst33|opres[16]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~96_combout\ = (\inst16|selop\(0) & ((\inst33|Add0~34_combout\))) # (!\inst16|selop\(0) & (\inst700|valor_interno\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst700|valor_interno\(0),
	datac => \inst16|selop\(0),
	datad => \inst33|Add0~34_combout\,
	combout => \inst33|opres[16]~96_combout\);

-- Location: LCCOMB_X24_Y6_N14
\inst33|opres[16]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~94_combout\ = (\inst16|selop\(2) & ((\inst16|selop\(0) & ((\inst700|valor_interno\(0)))) # (!\inst16|selop\(0) & (\inst700|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst700|valor_interno\(15),
	datac => \inst16|selop\(0),
	datad => \inst700|valor_interno\(0),
	combout => \inst33|opres[16]~94_combout\);

-- Location: LCCOMB_X22_Y6_N14
\inst33|Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~32_combout\ = ((\inst700|valor_interno\(15) $ (\inst50|$00000|auto_generated|result_node[15]~0_combout\ $ (\inst33|Add2~31\)))) # (GND)
-- \inst33|Add2~33\ = CARRY((\inst700|valor_interno\(15) & ((!\inst33|Add2~31\) # (!\inst50|$00000|auto_generated|result_node[15]~0_combout\))) # (!\inst700|valor_interno\(15) & (!\inst50|$00000|auto_generated|result_node[15]~0_combout\ & 
-- !\inst33|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(15),
	datab => \inst50|$00000|auto_generated|result_node[15]~0_combout\,
	datad => VCC,
	cin => \inst33|Add2~31\,
	combout => \inst33|Add2~32_combout\,
	cout => \inst33|Add2~33\);

-- Location: LCCOMB_X22_Y6_N16
\inst33|Add2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add2~34_combout\ = !\inst33|Add2~33\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst33|Add2~33\,
	combout => \inst33|Add2~34_combout\);

-- Location: LCCOMB_X22_Y6_N18
\inst33|opres[16]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~95_combout\ = (\inst33|opres[16]~94_combout\) # ((!\inst16|selop\(2) & (!\inst16|selop\(0) & \inst33|Add2~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst16|selop\(0),
	datac => \inst33|opres[16]~94_combout\,
	datad => \inst33|Add2~34_combout\,
	combout => \inst33|opres[16]~95_combout\);

-- Location: LCCOMB_X22_Y6_N28
\inst33|opres[16]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~97_combout\ = (\inst16|selop\(1) & (((\inst33|opres[16]~95_combout\)))) # (!\inst16|selop\(1) & (\inst33|opres[16]~96_combout\ & ((!\inst16|selop\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(1),
	datab => \inst33|opres[16]~96_combout\,
	datac => \inst33|opres[16]~95_combout\,
	datad => \inst16|selop\(2),
	combout => \inst33|opres[16]~97_combout\);

-- Location: LCCOMB_X22_Y6_N22
\inst33|opres[16]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(16)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[16]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[16]~97_combout\,
	datac => \inst33|opres\(16),
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(16));

-- Location: LCCOMB_X25_Y6_N24
\inst|ci~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~2_combout\ = (\inst16|cadj~q\ & (\inst|ci~1_combout\)) # (!\inst16|cadj~q\ & (\inst|ci~0_combout\ & ((\inst|ci~1_combout\) # (\inst33|opres\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ci~1_combout\,
	datab => \inst16|cadj~q\,
	datac => \inst|ci~0_combout\,
	datad => \inst33|opres\(16),
	combout => \inst|ci~2_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst|ci~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~3_combout\ = (\inst16|cadj~q\ & (\inst|ci~q\ & ((\inst|ci~2_combout\) # (!\inst|vi~3_combout\)))) # (!\inst16|cadj~q\ & (((\inst|ci~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ci~q\,
	datab => \inst16|cadj~q\,
	datac => \inst|vi~3_combout\,
	datad => \inst|ci~2_combout\,
	combout => \inst|ci~3_combout\);

-- Location: LCCOMB_X25_Y6_N28
\inst|ci~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ci~5_combout\ = (\inst|ci~4_combout\ & (\inst|ci~q\)) # (!\inst|ci~4_combout\ & ((\inst|ci~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ci~4_combout\,
	datac => \inst|ci~q\,
	datad => \inst|ci~3_combout\,
	combout => \inst|ci~5_combout\);

-- Location: FF_X25_Y6_N29
\inst|ci\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|ci~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ci~q\);

-- Location: LCCOMB_X25_Y6_N2
\inst40|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|$00000|auto_generated|result_node[0]~0_combout\ = (\inst16|selc~q\ & (\inst16|cadj~q\)) # (!\inst16|selc~q\ & ((\inst|ci~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|cadj~q\,
	datac => \inst16|selc~q\,
	datad => \inst|ci~q\,
	combout => \inst40|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X23_Y7_N14
\inst33|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~1_cout\ = CARRY(\inst40|$00000|auto_generated|result_node[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	datad => VCC,
	cout => \inst33|Add0~1_cout\);

-- Location: LCCOMB_X23_Y7_N16
\inst33|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\inst700|valor_interno\(0) & ((\inst50|$00000|auto_generated|result_node[0]~15_combout\ & (\inst33|Add0~1_cout\ & VCC)) # (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst33|Add0~1_cout\)))) # 
-- (!\inst700|valor_interno\(0) & ((\inst50|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst33|Add0~1_cout\)) # (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\inst700|valor_interno\(0) & (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & !\inst33|Add0~1_cout\)) # (!\inst700|valor_interno\(0) & ((!\inst33|Add0~1_cout\) # 
-- (!\inst50|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(0),
	datab => \inst50|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

-- Location: LCCOMB_X23_Y7_N18
\inst33|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~4_combout\ = ((\inst50|$00000|auto_generated|result_node[1]~14_combout\ $ (\inst700|valor_interno\(1) $ (!\inst33|Add0~3\)))) # (GND)
-- \inst33|Add0~5\ = CARRY((\inst50|$00000|auto_generated|result_node[1]~14_combout\ & ((\inst700|valor_interno\(1)) # (!\inst33|Add0~3\))) # (!\inst50|$00000|auto_generated|result_node[1]~14_combout\ & (\inst700|valor_interno\(1) & !\inst33|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[1]~14_combout\,
	datab => \inst700|valor_interno\(1),
	datad => VCC,
	cin => \inst33|Add0~3\,
	combout => \inst33|Add0~4_combout\,
	cout => \inst33|Add0~5\);

-- Location: LCCOMB_X23_Y7_N20
\inst33|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_combout\ = (\inst50|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst700|valor_interno\(2) & (\inst33|Add0~5\ & VCC)) # (!\inst700|valor_interno\(2) & (!\inst33|Add0~5\)))) # 
-- (!\inst50|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst700|valor_interno\(2) & (!\inst33|Add0~5\)) # (!\inst700|valor_interno\(2) & ((\inst33|Add0~5\) # (GND)))))
-- \inst33|Add0~7\ = CARRY((\inst50|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst700|valor_interno\(2) & !\inst33|Add0~5\)) # (!\inst50|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst33|Add0~5\) # (!\inst700|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \inst700|valor_interno\(2),
	datad => VCC,
	cin => \inst33|Add0~5\,
	combout => \inst33|Add0~6_combout\,
	cout => \inst33|Add0~7\);

-- Location: LCCOMB_X23_Y7_N22
\inst33|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|Add0~8_combout\ = ((\inst50|$00000|auto_generated|result_node[3]~12_combout\ $ (\inst700|valor_interno\(3) $ (!\inst33|Add0~7\)))) # (GND)
-- \inst33|Add0~9\ = CARRY((\inst50|$00000|auto_generated|result_node[3]~12_combout\ & ((\inst700|valor_interno\(3)) # (!\inst33|Add0~7\))) # (!\inst50|$00000|auto_generated|result_node[3]~12_combout\ & (\inst700|valor_interno\(3) & !\inst33|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \inst700|valor_interno\(3),
	datad => VCC,
	cin => \inst33|Add0~7\,
	combout => \inst33|Add0~8_combout\,
	cout => \inst33|Add0~9\);

-- Location: LCCOMB_X23_Y7_N0
\inst33|opres[4]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~90_combout\ = (\inst33|opres[4]~89_combout\ & ((\inst700|valor_interno\(3)) # ((!\inst33|opres[14]~9_combout\)))) # (!\inst33|opres[4]~89_combout\ & (((\inst33|opres[14]~9_combout\ & \inst33|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~89_combout\,
	datab => \inst700|valor_interno\(3),
	datac => \inst33|opres[14]~9_combout\,
	datad => \inst33|Add0~10_combout\,
	combout => \inst33|opres[4]~90_combout\);

-- Location: LCCOMB_X24_Y5_N2
\inst33|opres[4]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~91_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\ & ((\inst700|valor_interno\(5)))) # (!\inst33|opres[0]~7_combout\ & 
-- (\inst33|opres[4]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~90_combout\,
	datab => \inst700|valor_interno\(5),
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[4]~91_combout\);

-- Location: LCCOMB_X24_Y5_N16
\inst33|opres[4]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~93_combout\ = (\inst33|opres[4]~91_combout\ & ((\inst33|opres~92_combout\) # ((!\inst33|opres[14]~8_combout\)))) # (!\inst33|opres[4]~91_combout\ & (((\inst33|opres[14]~8_combout\ & \inst33|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres~92_combout\,
	datab => \inst33|opres[4]~91_combout\,
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|Add2~10_combout\,
	combout => \inst33|opres[4]~93_combout\);

-- Location: LCCOMB_X24_Y5_N6
\inst33|opres[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(4))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[4]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(4),
	datab => \inst33|opres[4]~93_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(4));

-- Location: LCCOMB_X24_Y7_N30
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

-- Location: FF_X24_Y7_N31
\inst24|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux27~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(4));

-- Location: FF_X24_Y7_N5
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(4));

-- Location: FF_X27_Y7_N21
\inst700666|ACCA|valor_interno[4]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(4));

-- Location: LCCOMB_X23_Y9_N28
\inst202|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(4)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno[13]~2_combout\,
	datab => \inst700666|ACCB|valor_interno\(4),
	datac => \inst700666|inst|D1~2_combout\,
	datad => \inst700666|ACCA|valor_interno\(4),
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X23_Y9_N29
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

-- Location: LCCOMB_X27_Y7_N18
\inst33|opres[3]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~83_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(3))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(3),
	datab => \inst14|valor_interno\(3),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres[3]~83_combout\);

-- Location: LCCOMB_X27_Y7_N12
\inst33|opres[3]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~84_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(3) & ((!\inst33|opres[3]~83_combout\) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst700|valor_interno\(3) & ((\inst33|opres[3]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~10_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(3),
	datad => \inst33|opres[3]~83_combout\,
	combout => \inst33|opres[3]~84_combout\);

-- Location: LCCOMB_X27_Y7_N30
\inst33|opres[3]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~85_combout\ = (\inst33|opres[3]~84_combout\ & (((\inst700|valor_interno\(2))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[3]~84_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[3]~84_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(2),
	datad => \inst33|Add0~8_combout\,
	combout => \inst33|opres[3]~85_combout\);

-- Location: LCCOMB_X27_Y7_N16
\inst33|opres[3]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~86_combout\ = (\inst33|opres[0]~7_combout\ & (((\inst33|opres[14]~8_combout\)))) # (!\inst33|opres[0]~7_combout\ & ((\inst33|opres[14]~8_combout\ & ((\inst33|Add2~8_combout\))) # (!\inst33|opres[14]~8_combout\ & 
-- (\inst33|opres[3]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[3]~85_combout\,
	datab => \inst33|opres[0]~7_combout\,
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|Add2~8_combout\,
	combout => \inst33|opres[3]~86_combout\);

-- Location: LCCOMB_X27_Y7_N2
\inst33|opres~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~87_combout\ = (\inst700|valor_interno\(3) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(3)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(3),
	datab => \inst14|valor_interno\(3),
	datac => \inst24|valor_interno\(3),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~87_combout\);

-- Location: LCCOMB_X27_Y7_N28
\inst33|opres[3]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~88_combout\ = (\inst33|opres[3]~86_combout\ & (((\inst33|opres~87_combout\) # (!\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[3]~86_combout\ & (\inst700|valor_interno\(4) & (\inst33|opres[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(4),
	datab => \inst33|opres[3]~86_combout\,
	datac => \inst33|opres[0]~7_combout\,
	datad => \inst33|opres~87_combout\,
	combout => \inst33|opres[3]~88_combout\);

-- Location: LCCOMB_X27_Y7_N10
\inst33|opres[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(3))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[3]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(3),
	datac => \inst33|opres[3]~88_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(3));

-- Location: LCCOMB_X27_Y7_N22
\inst20|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux28~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(3),
	combout => \inst20|Mux28~0_combout\);

-- Location: FF_X27_Y7_N23
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

-- Location: FF_X27_Y7_N7
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(3));

-- Location: LCCOMB_X27_Y7_N26
\inst202|Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(3))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(3),
	datab => \inst700666|ACCB|valor_interno\(3),
	datac => \inst700|valor_interno[13]~2_combout\,
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X27_Y7_N27
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

-- Location: LCCOMB_X23_Y7_N2
\inst33|opres[2]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~78_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(2) & ((!\inst50|$00000|auto_generated|result_node[2]~13_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(2) & ((\inst50|$00000|auto_generated|result_node[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[14]~10_combout\,
	datac => \inst700|valor_interno\(2),
	datad => \inst50|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst33|opres[2]~78_combout\);

-- Location: LCCOMB_X23_Y7_N4
\inst33|opres[2]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~79_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[2]~78_combout\ & (\inst700|valor_interno\(1))) # (!\inst33|opres[2]~78_combout\ & ((\inst33|Add0~6_combout\))))) # (!\inst33|opres[14]~9_combout\ & 
-- (\inst33|opres[2]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[2]~78_combout\,
	datac => \inst700|valor_interno\(1),
	datad => \inst33|Add0~6_combout\,
	combout => \inst33|opres[2]~79_combout\);

-- Location: LCCOMB_X24_Y7_N24
\inst33|opres[2]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~80_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\ & (\inst700|valor_interno\(3))) # (!\inst33|opres[0]~7_combout\ & 
-- ((\inst33|opres[2]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(3),
	datab => \inst33|opres[2]~79_combout\,
	datac => \inst33|opres[14]~8_combout\,
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[2]~80_combout\);

-- Location: LCCOMB_X25_Y7_N16
\inst33|opres~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~81_combout\ = (\inst700|valor_interno\(2) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(2))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(2),
	datab => \inst700|valor_interno\(2),
	datac => \inst14|valor_interno\(2),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~81_combout\);

-- Location: LCCOMB_X25_Y7_N18
\inst33|opres[2]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~82_combout\ = (\inst33|opres[14]~8_combout\ & ((\inst33|opres[2]~80_combout\ & ((\inst33|opres~81_combout\))) # (!\inst33|opres[2]~80_combout\ & (\inst33|Add2~6_combout\)))) # (!\inst33|opres[14]~8_combout\ & 
-- (\inst33|opres[2]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[2]~80_combout\,
	datac => \inst33|Add2~6_combout\,
	datad => \inst33|opres~81_combout\,
	combout => \inst33|opres[2]~82_combout\);

-- Location: LCCOMB_X25_Y7_N28
\inst33|opres[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(2))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[2]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(2),
	datac => \inst33|opres[2]~82_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(2));

-- Location: LCCOMB_X25_Y7_N22
\inst20|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux29~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(2),
	combout => \inst20|Mux29~0_combout\);

-- Location: FF_X25_Y7_N23
\inst24|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux29~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(2));

-- Location: FF_X24_Y7_N19
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(2));

-- Location: LCCOMB_X27_Y7_N0
\inst700666|ACCA|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(2),
	combout => \inst700666|ACCA|valor_interno[2]~feeder_combout\);

-- Location: FF_X27_Y7_N1
\inst700666|ACCA|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LCCOMB_X27_Y7_N24
\inst202|Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCA|valor_interno\(2)))) # (!\inst700666|inst|D1~2_combout\ & (\inst700666|ACCB|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(2),
	datab => \inst700666|ACCA|valor_interno\(2),
	datac => \inst700|valor_interno[13]~2_combout\,
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X27_Y7_N25
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

-- Location: LCCOMB_X24_Y7_N0
\inst33|opres[1]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~72_combout\ = (\inst2|process_0~2_combout\ & (\inst24|valor_interno\(1))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(1),
	datab => \inst14|valor_interno\(1),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres[1]~72_combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst33|opres[1]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~73_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(1) & ((!\inst33|opres[1]~72_combout\) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst700|valor_interno\(1) & ((\inst33|opres[1]~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~10_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(1),
	datad => \inst33|opres[1]~72_combout\,
	combout => \inst33|opres[1]~73_combout\);

-- Location: LCCOMB_X24_Y7_N6
\inst33|opres[1]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~74_combout\ = (\inst33|opres[1]~73_combout\ & (((\inst700|valor_interno\(0))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[1]~73_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[1]~73_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(0),
	datad => \inst33|Add0~4_combout\,
	combout => \inst33|opres[1]~74_combout\);

-- Location: LCCOMB_X25_Y7_N14
\inst33|opres[1]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~75_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|opres[0]~7_combout\) # (\inst33|Add2~4_combout\)))) # (!\inst33|opres[14]~8_combout\ & (\inst33|opres[1]~74_combout\ & (!\inst33|opres[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~8_combout\,
	datab => \inst33|opres[1]~74_combout\,
	datac => \inst33|opres[0]~7_combout\,
	datad => \inst33|Add2~4_combout\,
	combout => \inst33|opres[1]~75_combout\);

-- Location: LCCOMB_X25_Y7_N24
\inst33|opres~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~76_combout\ = (\inst700|valor_interno\(1) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(1))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(1),
	datab => \inst700|valor_interno\(1),
	datac => \inst14|valor_interno\(1),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~76_combout\);

-- Location: LCCOMB_X25_Y7_N30
\inst33|opres[1]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~77_combout\ = (\inst33|opres[1]~75_combout\ & (((\inst33|opres~76_combout\) # (!\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[1]~75_combout\ & (\inst700|valor_interno\(2) & ((\inst33|opres[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(2),
	datab => \inst33|opres[1]~75_combout\,
	datac => \inst33|opres~76_combout\,
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[1]~77_combout\);

-- Location: LCCOMB_X24_Y7_N16
\inst33|opres[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres\(1)))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres[1]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[1]~77_combout\,
	datab => \inst33|opres\(1),
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(1));

-- Location: LCCOMB_X24_Y7_N26
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

-- Location: FF_X24_Y7_N27
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

-- Location: FF_X25_Y8_N11
\inst34|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[1]~5_combout\,
	asdata => \inst24|valor_interno\(1),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(1));

-- Location: LCCOMB_X24_Y8_N22
\inst1|mem~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~13_combout\ = (!\inst34|valor_interno\(3) & (!\inst34|valor_interno\(2) & (!\inst34|valor_interno\(1) & \inst1|mem~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(3),
	datab => \inst34|valor_interno\(2),
	datac => \inst34|valor_interno\(1),
	datad => \inst1|mem~11_combout\,
	combout => \inst1|mem~13_combout\);

-- Location: FF_X24_Y8_N1
\inst8|valor_interno[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|mem~13_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(23));

-- Location: LCCOMB_X24_Y8_N14
\inst4|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (!\inst8|valor_interno\(22) & !\inst8|valor_interno\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(22),
	datad => \inst8|valor_interno\(21),
	combout => \inst4|Equal2~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst4|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = (!\inst8|valor_interno\(23) & (\inst8|valor_interno\(19) & (\inst8|valor_interno\(20) & \inst4|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(23),
	datab => \inst8|valor_interno\(19),
	datac => \inst8|valor_interno\(20),
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y8_N18
\inst21|$00000|auto_generated|result_node[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[2]~2_combout\ = (\inst4|Equal7~0_combout\) # ((\inst4|Equal2~1_combout\ & (\inst8|valor_interno\(18) & !\inst8|valor_interno\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst8|valor_interno\(18),
	datad => \inst8|valor_interno\(17),
	combout => \inst21|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X23_Y8_N26
\inst21|$00000|auto_generated|result_node[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21|$00000|auto_generated|result_node[2]~3_combout\ = (\inst49|selctrl~2_combout\ & ((\inst21|$00000|auto_generated|result_node[2]~2_combout\) # ((\inst8|valor_interno\(22) & \inst4|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst21|$00000|auto_generated|result_node[2]~2_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst21|$00000|auto_generated|result_node[2]~3_combout\);

-- Location: FF_X23_Y8_N27
\inst16|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	d => \inst21|$00000|auto_generated|result_node[2]~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selregw\(2));

-- Location: FF_X23_Y8_N13
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst16|selregw\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LCCOMB_X23_Y8_N8
\inst700666|inst1000|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst700666|inst1000|Equal1~1_combout\);

-- Location: FF_X24_Y4_N31
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
	ena => \inst700666|inst1000|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(6));

-- Location: LCCOMB_X24_Y4_N14
\inst202|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = (\inst700666|ACCB|valor_interno\(6) & \inst14|valor_interno[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(6),
	datac => \inst14|valor_interno[7]~1_combout\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X24_Y4_N15
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

-- Location: LCCOMB_X24_Y7_N8
\inst50|$00000|auto_generated|result_node[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst50|$00000|auto_generated|result_node[6]~9_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(6)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(6),
	datac => \inst24|valor_interno\(6),
	datad => \inst2|process_0~2_combout\,
	combout => \inst50|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X25_Y7_N2
\inst33|opres[6]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~17_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst700|valor_interno\(6) & ((!\inst50|$00000|auto_generated|result_node[6]~9_combout\) # 
-- (!\inst33|opres[14]~10_combout\))) # (!\inst700|valor_interno\(6) & ((\inst50|$00000|auto_generated|result_node[6]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[14]~10_combout\,
	datac => \inst700|valor_interno\(6),
	datad => \inst50|$00000|auto_generated|result_node[6]~9_combout\,
	combout => \inst33|opres[6]~17_combout\);

-- Location: LCCOMB_X25_Y7_N12
\inst33|opres[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~18_combout\ = (\inst33|opres[14]~9_combout\ & ((\inst33|opres[6]~17_combout\ & ((\inst700|valor_interno\(5)))) # (!\inst33|opres[6]~17_combout\ & (\inst33|Add0~14_combout\)))) # (!\inst33|opres[14]~9_combout\ & 
-- (\inst33|opres[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~9_combout\,
	datab => \inst33|opres[6]~17_combout\,
	datac => \inst33|Add0~14_combout\,
	datad => \inst700|valor_interno\(5),
	combout => \inst33|opres[6]~18_combout\);

-- Location: LCCOMB_X25_Y7_N10
\inst33|opres[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~19_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & ((\inst33|opres[0]~7_combout\ & ((\inst700|valor_interno\(7)))) # (!\inst33|opres[0]~7_combout\ & 
-- (\inst33|opres[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[6]~18_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst700|valor_interno\(7),
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[6]~19_combout\);

-- Location: LCCOMB_X24_Y4_N2
\inst33|opres~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~20_combout\ = (\inst700|valor_interno\(6) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(6))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~2_combout\,
	datab => \inst24|valor_interno\(6),
	datac => \inst14|valor_interno\(6),
	datad => \inst700|valor_interno\(6),
	combout => \inst33|opres~20_combout\);

-- Location: LCCOMB_X25_Y7_N20
\inst33|opres[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~21_combout\ = (\inst33|opres[6]~19_combout\ & (((\inst33|opres~20_combout\)) # (!\inst33|opres[14]~8_combout\))) # (!\inst33|opres[6]~19_combout\ & (\inst33|opres[14]~8_combout\ & ((\inst33|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[6]~19_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|opres~20_combout\,
	datad => \inst33|Add2~14_combout\,
	combout => \inst33|opres[6]~21_combout\);

-- Location: LCCOMB_X25_Y7_N6
\inst33|opres[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(6))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[6]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(6),
	datab => \inst33|opres[6]~21_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(6));

-- Location: LCCOMB_X25_Y7_N8
\inst20|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux25~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(6),
	combout => \inst20|Mux25~0_combout\);

-- Location: FF_X25_Y7_N9
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

-- Location: LCCOMB_X25_Y4_N30
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

-- Location: FF_X25_Y4_N31
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
	ena => \inst700666|inst1000|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(6));

-- Location: LCCOMB_X24_Y4_N16
\inst202|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (!\inst700|valor_interno[13]~2_combout\ & ((\inst700666|inst|D1~2_combout\ & (\inst700666|ACCA|valor_interno\(6))) # (!\inst700666|inst|D1~2_combout\ & ((\inst700666|ACCB|valor_interno\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(6),
	datab => \inst700|valor_interno[13]~2_combout\,
	datac => \inst700666|ACCB|valor_interno\(6),
	datad => \inst700666|inst|D1~2_combout\,
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X24_Y4_N17
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

-- Location: LCCOMB_X20_Y7_N30
\inst33|opres[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~11_combout\ = (\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(5)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|valor_interno\(5),
	datac => \inst24|valor_interno\(5),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres[5]~11_combout\);

-- Location: LCCOMB_X20_Y7_N12
\inst33|opres[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~12_combout\ = (\inst33|opres[14]~9_combout\ & (\inst33|opres[14]~10_combout\)) # (!\inst33|opres[14]~9_combout\ & ((\inst33|opres[5]~11_combout\ & ((!\inst700|valor_interno\(5)) # (!\inst33|opres[14]~10_combout\))) # 
-- (!\inst33|opres[5]~11_combout\ & ((\inst700|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~10_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst33|opres[5]~11_combout\,
	datad => \inst700|valor_interno\(5),
	combout => \inst33|opres[5]~12_combout\);

-- Location: LCCOMB_X20_Y7_N26
\inst33|opres[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~13_combout\ = (\inst33|opres[5]~12_combout\ & (((\inst700|valor_interno\(4))) # (!\inst33|opres[14]~9_combout\))) # (!\inst33|opres[5]~12_combout\ & (\inst33|opres[14]~9_combout\ & ((\inst33|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[5]~12_combout\,
	datab => \inst33|opres[14]~9_combout\,
	datac => \inst700|valor_interno\(4),
	datad => \inst33|Add0~12_combout\,
	combout => \inst33|opres[5]~13_combout\);

-- Location: LCCOMB_X20_Y7_N20
\inst33|opres[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~14_combout\ = (\inst33|opres[14]~8_combout\ & (((\inst33|Add2~12_combout\) # (\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[14]~8_combout\ & (\inst33|opres[5]~13_combout\ & ((!\inst33|opres[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[5]~13_combout\,
	datab => \inst33|opres[14]~8_combout\,
	datac => \inst33|Add2~12_combout\,
	datad => \inst33|opres[0]~7_combout\,
	combout => \inst33|opres[5]~14_combout\);

-- Location: LCCOMB_X20_Y7_N14
\inst33|opres~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~15_combout\ = (\inst700|valor_interno\(5) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(5))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|valor_interno\(5),
	datab => \inst14|valor_interno\(5),
	datac => \inst700|valor_interno\(5),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~15_combout\);

-- Location: LCCOMB_X20_Y7_N16
\inst33|opres[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~16_combout\ = (\inst33|opres[5]~14_combout\ & (((\inst33|opres~15_combout\) # (!\inst33|opres[0]~7_combout\)))) # (!\inst33|opres[5]~14_combout\ & (\inst700|valor_interno\(6) & (\inst33|opres[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(6),
	datab => \inst33|opres[5]~14_combout\,
	datac => \inst33|opres[0]~7_combout\,
	datad => \inst33|opres~15_combout\,
	combout => \inst33|opres[5]~16_combout\);

-- Location: LCCOMB_X20_Y7_N6
\inst33|opres[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(5))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[5]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(5),
	datac => \inst33|opres[5]~16_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(5));

-- Location: LCCOMB_X20_Y7_N22
\inst20|Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux26~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(5),
	combout => \inst20|Mux26~0_combout\);

-- Location: FF_X20_Y7_N23
\inst24|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst20|Mux26~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|valor_interno\(5));

-- Location: FF_X25_Y8_N19
\inst34|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[5]~13_combout\,
	asdata => \inst24|valor_interno\(5),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(5));

-- Location: LCCOMB_X25_Y8_N22
\inst1|mem~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~16_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(4)) # ((\inst34|valor_interno\(1) & \inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(0),
	datad => \inst34|valor_interno\(4),
	combout => \inst1|mem~16_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst1|mem~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~17_combout\ = (!\inst34|valor_interno\(5) & !\inst1|mem~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~16_combout\,
	combout => \inst1|mem~17_combout\);

-- Location: FF_X24_Y8_N11
\inst8|valor_interno[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|mem~17_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(18));

-- Location: LCCOMB_X25_Y8_N0
\inst4|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideNor0~0_combout\ = ((\inst8|valor_interno\(17) & ((!\inst8|valor_interno\(16)))) # (!\inst8|valor_interno\(17) & (!\inst8|valor_interno\(18)))) # (!\inst4|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(18),
	datab => \inst8|valor_interno\(16),
	datac => \inst8|valor_interno\(17),
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|WideNor0~0_combout\);

-- Location: LCCOMB_X23_Y9_N20
\inst27|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27|$00000|auto_generated|result_node[0]~0_combout\ = (\inst49|selctrl~2_combout\ & (((\inst4|Equal7~0_combout\) # (!\inst14|valor_interno[7]~0_combout\)) # (!\inst4|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideNor0~0_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst14|valor_interno[7]~0_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst27|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: FF_X25_Y6_N9
\inst16|selc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst27|$00000|auto_generated|result_node[0]~0_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selc~q\);

-- Location: LCCOMB_X23_Y5_N20
\inst33|opres[0]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~66_combout\ = (\inst16|selop\(1) & (((\inst16|selop\(0))))) # (!\inst16|selop\(1) & ((\inst16|selop\(0) & ((\inst33|Add0~2_combout\))) # (!\inst16|selop\(0) & (\inst700|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(1),
	datab => \inst16|selop\(1),
	datac => \inst33|Add0~2_combout\,
	datad => \inst16|selop\(0),
	combout => \inst33|opres[0]~66_combout\);

-- Location: LCCOMB_X25_Y4_N0
\inst33|opres~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~67_combout\ = (\inst700|valor_interno\(0) & ((\inst2|process_0~2_combout\ & (\inst24|valor_interno\(0))) # (!\inst2|process_0~2_combout\ & ((\inst14|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(0),
	datab => \inst24|valor_interno\(0),
	datac => \inst14|valor_interno\(0),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~67_combout\);

-- Location: LCCOMB_X23_Y5_N24
\inst33|opres[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~68_combout\ = (\inst33|opres[0]~66_combout\ & (((\inst33|opres~67_combout\)) # (!\inst16|selop\(1)))) # (!\inst33|opres[0]~66_combout\ & (\inst16|selop\(1) & ((\inst33|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~66_combout\,
	datab => \inst16|selop\(1),
	datac => \inst33|opres~67_combout\,
	datad => \inst33|Add2~2_combout\,
	combout => \inst33|opres[0]~68_combout\);

-- Location: LCCOMB_X23_Y5_N28
\inst33|opres[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~69_combout\ = (\inst16|selop\(0) & (\inst16|selop\(1) & \inst700|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst16|selop\(1),
	datad => \inst700|valor_interno\(1),
	combout => \inst33|opres[0]~69_combout\);

-- Location: LCCOMB_X23_Y5_N4
\inst33|opres[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~70_combout\ = (!\inst16|selop\(1) & ((\inst50|$00000|auto_generated|result_node[0]~15_combout\ & ((!\inst700|valor_interno\(0)) # (!\inst16|selop\(0)))) # (!\inst50|$00000|auto_generated|result_node[0]~15_combout\ & 
-- ((\inst700|valor_interno\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(1),
	datab => \inst16|selop\(0),
	datac => \inst50|$00000|auto_generated|result_node[0]~15_combout\,
	datad => \inst700|valor_interno\(0),
	combout => \inst33|opres[0]~70_combout\);

-- Location: LCCOMB_X23_Y5_N8
\inst33|opres[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~71_combout\ = (\inst16|selop\(2) & (((\inst33|opres[0]~69_combout\) # (\inst33|opres[0]~70_combout\)))) # (!\inst16|selop\(2) & (\inst33|opres[0]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~68_combout\,
	datab => \inst16|selop\(2),
	datac => \inst33|opres[0]~69_combout\,
	datad => \inst33|opres[0]~70_combout\,
	combout => \inst33|opres[0]~71_combout\);

-- Location: LCCOMB_X24_Y5_N20
\inst33|opres[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(0))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[0]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(0),
	datac => \inst33|opres[0]~71_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(0));

-- Location: LCCOMB_X24_Y5_N0
\inst20|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|Mux31~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(0),
	combout => \inst20|Mux31~0_combout\);

-- Location: FF_X24_Y5_N1
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

-- Location: LCCOMB_X25_Y8_N24
\inst9999|$00000|auto_generated|result_node[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9999|$00000|auto_generated|result_node[0]~0_combout\ = (\inst100|valor_interno~q\ & (\inst24|valor_interno\(0))) # (!\inst100|valor_interno~q\ & ((!\inst34|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst100|valor_interno~q\,
	datab => \inst24|valor_interno\(0),
	datac => \inst34|valor_interno\(0),
	combout => \inst9999|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X25_Y8_N2
\inst34|valor_interno[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[0]~feeder_combout\ = \inst9999|$00000|auto_generated|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9999|$00000|auto_generated|result_node[0]~0_combout\,
	combout => \inst34|valor_interno[0]~feeder_combout\);

-- Location: FF_X25_Y8_N3
\inst34|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(0));

-- Location: LCCOMB_X25_Y8_N12
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

-- Location: FF_X25_Y8_N13
\inst34|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[2]~7_combout\,
	asdata => \inst24|valor_interno\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(2));

-- Location: LCCOMB_X25_Y8_N14
\inst34|valor_interno[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[3]~9_combout\ = (\inst34|valor_interno\(3) & (\inst34|valor_interno[2]~8\ $ (GND))) # (!\inst34|valor_interno\(3) & (!\inst34|valor_interno[2]~8\ & VCC))
-- \inst34|valor_interno[3]~10\ = CARRY((\inst34|valor_interno\(3) & !\inst34|valor_interno[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(3),
	datad => VCC,
	cin => \inst34|valor_interno[2]~8\,
	combout => \inst34|valor_interno[3]~9_combout\,
	cout => \inst34|valor_interno[3]~10\);

-- Location: FF_X25_Y8_N15
\inst34|valor_interno[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[3]~9_combout\,
	asdata => \inst24|valor_interno\(3),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(3));

-- Location: FF_X25_Y8_N17
\inst34|valor_interno[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst47~clkctrl_outclk\,
	d => \inst34|valor_interno[4]~11_combout\,
	asdata => \inst24|valor_interno\(4),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => \inst100|valor_interno~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|valor_interno\(4));

-- Location: LCCOMB_X25_Y8_N28
\inst1|mem~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~14_combout\ = (\inst34|valor_interno\(3)) # ((\inst34|valor_interno\(1) & ((\inst34|valor_interno\(0)) # (!\inst34|valor_interno\(2)))) # (!\inst34|valor_interno\(1) & (\inst34|valor_interno\(0) $ (\inst34|valor_interno\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(1),
	datab => \inst34|valor_interno\(0),
	datac => \inst34|valor_interno\(3),
	datad => \inst34|valor_interno\(2),
	combout => \inst1|mem~14_combout\);

-- Location: LCCOMB_X24_Y8_N8
\inst1|mem~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~24_combout\ = (!\inst34|valor_interno\(4) & (!\inst34|valor_interno\(5) & !\inst1|mem~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst34|valor_interno\(5),
	datad => \inst1|mem~14_combout\,
	combout => \inst1|mem~24_combout\);

-- Location: FF_X24_Y8_N7
\inst8|valor_interno[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	asdata => \inst1|mem~24_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(22));

-- Location: LCCOMB_X24_Y8_N12
\inst4|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = (!\inst8|valor_interno\(22) & (!\inst8|valor_interno\(20) & (!\inst8|valor_interno\(18) & \inst4|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(22),
	datab => \inst8|valor_interno\(20),
	datac => \inst8|valor_interno\(18),
	datad => \inst4|Equal3~1_combout\,
	combout => \inst4|Equal7~0_combout\);

-- Location: LCCOMB_X23_Y8_N30
\inst4|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~combout\ = (\inst4|Equal7~0_combout\) # (!\inst4|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Equal7~0_combout\,
	datad => \inst4|WideOr0~0_combout\,
	combout => \inst4|WideOr0~combout\);

-- Location: LCCOMB_X23_Y8_N14
\inst49|selctrl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|selctrl~0_combout\ = (!\inst4|selregr[2]~0_combout\ & ((\inst700666|inst1000|Equal1~0_combout\) # ((!\inst16|selregw\(2) & \inst16|selregw\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selregw\(2),
	datab => \inst700666|inst1000|Equal1~0_combout\,
	datac => \inst16|selregw\(0),
	datad => \inst4|selregr[2]~0_combout\,
	combout => \inst49|selctrl~0_combout\);

-- Location: LCCOMB_X23_Y8_N24
\inst49|selctrl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|selctrl~1_combout\ = (\inst16|selregw\(2) & (!\inst16|selregw\(0) & !\inst4|selregr[2]~0_combout\)) # (!\inst16|selregw\(2) & (\inst16|selregw\(0) & \inst4|selregr[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selregw\(2),
	datac => \inst16|selregw\(0),
	datad => \inst4|selregr[2]~0_combout\,
	combout => \inst49|selctrl~1_combout\);

-- Location: LCCOMB_X23_Y8_N0
\inst49|selctrl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst49|selctrl~2_combout\ = (\inst4|WideOr0~combout\ & (!\inst700666|inst1000|Equal1~1_combout\ & ((!\inst49|selctrl~1_combout\)))) # (!\inst4|WideOr0~combout\ & (((!\inst49|selctrl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr0~combout\,
	datab => \inst700666|inst1000|Equal1~1_combout\,
	datac => \inst49|selctrl~0_combout\,
	datad => \inst49|selctrl~1_combout\,
	combout => \inst49|selctrl~2_combout\);

-- Location: LCCOMB_X24_Y8_N4
inst3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL((\inst49|selctrl~2_combout\ & \RELOJ~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|selctrl~2_combout\,
	datad => \RELOJ~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst1|mem~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~15_combout\ = (\inst34|valor_interno\(2) & (!\inst34|valor_interno\(3) & (\inst34|valor_interno\(0) $ (\inst34|valor_interno\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|valor_interno\(2),
	datab => \inst34|valor_interno\(3),
	datac => \inst34|valor_interno\(0),
	datad => \inst34|valor_interno\(1),
	combout => \inst1|mem~15_combout\);

-- Location: LCCOMB_X24_Y8_N28
\inst1|mem~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|mem~25_combout\ = (!\inst34|valor_interno\(4) & (\inst1|mem~15_combout\ & !\inst34|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|valor_interno\(4),
	datac => \inst1|mem~15_combout\,
	datad => \inst34|valor_interno\(5),
	combout => \inst1|mem~25_combout\);

-- Location: FF_X24_Y8_N29
\inst8|valor_interno[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~combout\,
	d => \inst1|mem~25_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|valor_interno\(21));

-- Location: LCCOMB_X24_Y8_N6
\inst4|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = (\inst8|valor_interno\(19) & !\inst8|valor_interno\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|valor_interno\(19),
	datad => \inst8|valor_interno\(23),
	combout => \inst4|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst4|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal3~1_combout\ = (\inst8|valor_interno\(21) & (\inst8|valor_interno\(17) & (!\inst8|valor_interno\(16) & \inst4|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|valor_interno\(21),
	datab => \inst8|valor_interno\(17),
	datac => \inst8|valor_interno\(16),
	datad => \inst4|Equal3~0_combout\,
	combout => \inst4|Equal3~1_combout\);

-- Location: LCCOMB_X23_Y8_N6
\inst4|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|Equal3~2_combout\ = (\inst4|Equal3~1_combout\ & (\inst8|valor_interno\(22) & (\inst8|valor_interno\(18) & \inst8|valor_interno\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~1_combout\,
	datab => \inst8|valor_interno\(22),
	datac => \inst8|valor_interno\(18),
	datad => \inst8|valor_interno\(20),
	combout => \inst4|Equal3~2_combout\);

-- Location: LCCOMB_X23_Y9_N12
\inst31|$00000|auto_generated|result_node[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31|$00000|auto_generated|result_node[2]~4_combout\ = (\inst49|selctrl~2_combout\ & ((\inst4|Equal3~2_combout\) # (\inst4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal3~2_combout\,
	datac => \inst4|Equal0~1_combout\,
	datad => \inst49|selctrl~2_combout\,
	combout => \inst31|$00000|auto_generated|result_node[2]~4_combout\);

-- Location: FF_X23_Y5_N29
\inst16|selop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst31|$00000|auto_generated|result_node[2]~4_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selop\(2));

-- Location: LCCOMB_X24_Y6_N8
\inst33|opres[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~3_combout\ = (\inst16|selop\(1) & (((\inst16|selop\(0))))) # (!\inst16|selop\(1) & ((\inst16|selop\(0) & ((\inst33|Add0~32_combout\))) # (!\inst16|selop\(0) & (\inst40|$00000|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(1),
	datab => \inst40|$00000|auto_generated|result_node[0]~0_combout\,
	datac => \inst16|selop\(0),
	datad => \inst33|Add0~32_combout\,
	combout => \inst33|opres[15]~3_combout\);

-- Location: LCCOMB_X24_Y6_N22
\inst33|opres~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~4_combout\ = (\inst700|valor_interno\(15) & ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(15)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(15),
	datab => \inst24|valor_interno\(15),
	datac => \inst700|valor_interno\(15),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~4_combout\);

-- Location: LCCOMB_X24_Y6_N4
\inst33|opres[15]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~5_combout\ = (\inst16|selop\(1) & ((\inst33|opres[15]~3_combout\ & (\inst33|opres~4_combout\)) # (!\inst33|opres[15]~3_combout\ & ((\inst33|Add2~32_combout\))))) # (!\inst16|selop\(1) & (\inst33|opres[15]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(1),
	datab => \inst33|opres[15]~3_combout\,
	datac => \inst33|opres~4_combout\,
	datad => \inst33|Add2~32_combout\,
	combout => \inst33|opres[15]~5_combout\);

-- Location: LCCOMB_X24_Y6_N26
\inst33|opres~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres~0_combout\ = (\inst700|valor_interno\(15)) # ((\inst2|process_0~2_combout\ & ((\inst24|valor_interno\(15)))) # (!\inst2|process_0~2_combout\ & (\inst14|valor_interno\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(15),
	datab => \inst24|valor_interno\(15),
	datac => \inst700|valor_interno\(15),
	datad => \inst2|process_0~2_combout\,
	combout => \inst33|opres~0_combout\);

-- Location: LCCOMB_X24_Y6_N16
\inst33|opres[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = (\inst16|selop\(0) & (((\inst16|selop\(1))))) # (!\inst16|selop\(0) & ((\inst16|selop\(1) & (\inst700|valor_interno\(14))) # (!\inst16|selop\(1) & ((\inst33|opres~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst700|valor_interno\(14),
	datac => \inst33|opres~0_combout\,
	datad => \inst16|selop\(1),
	combout => \inst33|opres[15]~1_combout\);

-- Location: LCCOMB_X24_Y6_N18
\inst33|opres[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = (\inst16|selop\(0) & (\inst700|valor_interno\(15) $ (((!\inst33|opres[15]~1_combout\ & \inst50|$00000|auto_generated|result_node[15]~0_combout\))))) # (!\inst16|selop\(0) & (\inst33|opres[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(0),
	datab => \inst33|opres[15]~1_combout\,
	datac => \inst700|valor_interno\(15),
	datad => \inst50|$00000|auto_generated|result_node[15]~0_combout\,
	combout => \inst33|opres[15]~2_combout\);

-- Location: LCCOMB_X24_Y6_N2
\inst33|opres[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~6_combout\ = (\inst16|selop\(2) & ((\inst33|opres[15]~2_combout\))) # (!\inst16|selop\(2) & (\inst33|opres[15]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selop\(2),
	datab => \inst33|opres[15]~5_combout\,
	datac => \inst33|opres[15]~2_combout\,
	combout => \inst33|opres[15]~6_combout\);

-- Location: LCCOMB_X24_Y6_N0
\inst33|opres[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & (\inst33|opres\(15))) # (!GLOBAL(\inst33|Equal0~0clkctrl_outclk\) & ((\inst33|opres[15]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(15),
	datac => \inst33|opres[15]~6_combout\,
	datad => \inst33|Equal0~0clkctrl_outclk\,
	combout => \inst33|opres\(15));

-- Location: LCCOMB_X25_Y6_N6
\inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst16|selfalgs\(3) & (!\inst16|cadj~q\ & (!\inst16|selfalgs\(0) & !\inst16|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(3),
	datab => \inst16|cadj~q\,
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(1),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y5_N28
\inst|ni~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ni~8_combout\ = (\inst16|selfalgs\(0) & (!\inst16|cadj~q\ & ((\inst16|selfalgs\(1)) # (!\inst16|selfalgs\(3))))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & (!\inst16|cadj~q\ & !\inst16|selfalgs\(3))) # (!\inst16|selfalgs\(1) & 
-- (\inst16|cadj~q\ & \inst16|selfalgs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \inst16|cadj~q\,
	datad => \inst16|selfalgs\(3),
	combout => \inst|ni~8_combout\);

-- Location: LCCOMB_X25_Y5_N18
\inst|ni~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ni~7_combout\ = (\inst|Equal0~1_combout\ & (((\inst|ni~q\)))) # (!\inst|Equal0~1_combout\ & ((\inst|ni~8_combout\ & (\inst33|opres\(15))) # (!\inst|ni~8_combout\ & ((\inst|ni~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(15),
	datab => \inst|Equal0~1_combout\,
	datac => \inst|ni~q\,
	datad => \inst|ni~8_combout\,
	combout => \inst|ni~7_combout\);

-- Location: FF_X25_Y5_N19
\inst|ni\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|ni~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ni~q\);

-- Location: LCCOMB_X25_Y5_N24
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

-- Location: FF_X25_Y5_N25
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

-- Location: LCCOMB_X25_Y6_N30
\inst|zi~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~8_combout\ = (\inst16|cadj~q\ & (((\inst16|selfalgs\(0)) # (\inst16|selfalgs\(1))))) # (!\inst16|cadj~q\ & ((\inst16|selfalgs\(3) & ((!\inst16|selfalgs\(1)) # (!\inst16|selfalgs\(0)))) # (!\inst16|selfalgs\(3) & (!\inst16|selfalgs\(0) & 
-- !\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(3),
	datab => \inst16|cadj~q\,
	datac => \inst16|selfalgs\(0),
	datad => \inst16|selfalgs\(1),
	combout => \inst|zi~8_combout\);

-- Location: LCCOMB_X24_Y5_N26
\inst|zi~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~4_combout\ = (!\inst33|opres\(13) & (!\inst33|opres\(0) & (!\inst33|opres\(14) & !\inst33|opres\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(13),
	datab => \inst33|opres\(0),
	datac => \inst33|opres\(14),
	datad => \inst33|opres\(15),
	combout => \inst|zi~4_combout\);

-- Location: LCCOMB_X24_Y5_N14
\inst|zi~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~2_combout\ = (!\inst33|opres\(8) & (!\inst33|opres\(6) & (!\inst33|opres\(5) & !\inst33|opres\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(8),
	datab => \inst33|opres\(6),
	datac => \inst33|opres\(5),
	datad => \inst33|opres\(7),
	combout => \inst|zi~2_combout\);

-- Location: LCCOMB_X24_Y5_N4
\inst|zi~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~3_combout\ = (!\inst33|opres\(12) & (!\inst33|opres\(10) & (!\inst33|opres\(11) & !\inst33|opres\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(12),
	datab => \inst33|opres\(10),
	datac => \inst33|opres\(11),
	datad => \inst33|opres\(9),
	combout => \inst|zi~3_combout\);

-- Location: LCCOMB_X24_Y5_N12
\inst|zi~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~5_combout\ = (!\inst33|opres\(4) & (!\inst33|opres\(2) & (!\inst33|opres\(1) & !\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(4),
	datab => \inst33|opres\(2),
	datac => \inst33|opres\(1),
	datad => \inst33|opres\(3),
	combout => \inst|zi~5_combout\);

-- Location: LCCOMB_X24_Y5_N10
\inst|zi~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~6_combout\ = (\inst|zi~4_combout\ & (\inst|zi~2_combout\ & (\inst|zi~3_combout\ & \inst|zi~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|zi~4_combout\,
	datab => \inst|zi~2_combout\,
	datac => \inst|zi~3_combout\,
	datad => \inst|zi~5_combout\,
	combout => \inst|zi~6_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst|zi~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|zi~7_combout\ = (\inst|Equal0~1_combout\ & (((\inst|zi~q\)))) # (!\inst|Equal0~1_combout\ & ((\inst|zi~8_combout\ & (\inst|zi~q\)) # (!\inst|zi~8_combout\ & ((\inst|zi~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|zi~8_combout\,
	datac => \inst|zi~q\,
	datad => \inst|zi~6_combout\,
	combout => \inst|zi~7_combout\);

-- Location: FF_X24_Y5_N25
\inst|zi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|zi~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|zi~q\);

-- Location: LCCOMB_X25_Y5_N2
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

-- Location: FF_X25_Y5_N3
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

-- Location: LCCOMB_X22_Y6_N24
\inst|vi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = (\inst16|selfalgs\(3) & (!\inst16|selfalgs\(0) & ((\inst33|opres\(16)) # (\inst16|selfalgs\(1))))) # (!\inst16|selfalgs\(3) & (\inst33|opres\(16) & ((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(16),
	datab => \inst16|selfalgs\(0),
	datac => \inst16|selfalgs\(1),
	datad => \inst16|selfalgs\(3),
	combout => \inst|vi~0_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst|vi~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~1_combout\ = (!\inst|Equal0~1_combout\ & (\inst|vi~0_combout\ & (\inst16|selfalgs\(1) $ (\inst16|cadj~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|cadj~q\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|vi~0_combout\,
	combout => \inst|vi~1_combout\);

-- Location: LCCOMB_X20_Y6_N18
\inst|vi~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~2_combout\ = (\inst16|cadj~q\ & (!\inst16|selfalgs\(1) & ((\inst16|selfalgs\(0)) # (!\inst16|selfalgs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(3),
	datac => \inst16|cadj~q\,
	datad => \inst16|selfalgs\(1),
	combout => \inst|vi~2_combout\);

-- Location: LCCOMB_X25_Y6_N14
\inst|vi~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~4_combout\ = (\inst|Equal0~1_combout\) # ((!\inst|vi~3_combout\ & (\inst16|cadj~q\ $ (!\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst16|cadj~q\,
	datac => \inst|vi~3_combout\,
	datad => \inst16|selfalgs\(1),
	combout => \inst|vi~4_combout\);

-- Location: LCCOMB_X22_Y6_N26
\inst|vi~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|vi~5_combout\ = (\inst|vi~1_combout\) # ((\inst|vi~q\ & ((\inst|vi~2_combout\) # (\inst|vi~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|vi~1_combout\,
	datab => \inst|vi~2_combout\,
	datac => \inst|vi~q\,
	datad => \inst|vi~4_combout\,
	combout => \inst|vi~5_combout\);

-- Location: FF_X22_Y6_N27
\inst|vi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|vi~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vi~q\);

-- Location: LCCOMB_X30_Y6_N16
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

-- Location: FF_X30_Y6_N17
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

-- Location: FF_X24_Y4_N9
\inst104|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|ci~q\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst104|valor_interno~q\);

-- Location: LCCOMB_X25_Y5_N10
\inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1) & (!\inst16|cadj~q\ & !\inst16|selfalgs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \inst16|cadj~q\,
	datad => \inst16|selfalgs\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y5_N12
\inst|hi~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|hi~0_combout\ = (\inst|Equal0~0_combout\ & (\inst33|opres\(8))) # (!\inst|Equal0~0_combout\ & ((\inst|hi~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(8),
	datac => \inst|hi~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|hi~0_combout\);

-- Location: FF_X25_Y5_N13
\inst|hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|hi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|hi~q\);

-- Location: LCCOMB_X25_Y5_N8
\inst105|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst105|valor_interno~feeder_combout\ = \inst|hi~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|hi~q\,
	combout => \inst105|valor_interno~feeder_combout\);

-- Location: FF_X25_Y5_N9
\inst105|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst105|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst105|valor_interno~q\);

-- Location: LCCOMB_X25_Y3_N28
\inst|ii~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ii~9_combout\ = (\inst16|selfalgs\(3) & ((\inst16|selfalgs\(1)) # ((\inst16|selfalgs\(0) & !\inst16|cadj~q\)))) # (!\inst16|selfalgs\(3) & ((\inst16|selfalgs\(0)) # ((!\inst16|selfalgs\(1)) # (!\inst16|cadj~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|cadj~q\,
	datac => \inst16|selfalgs\(3),
	datad => \inst16|selfalgs\(1),
	combout => \inst|ii~9_combout\);

-- Location: LCCOMB_X25_Y3_N18
\inst|ii~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|ii~10_combout\ = (\inst|ii~9_combout\ & ((\inst|ii~q\) # ((\inst16|selfalgs\(3) & !\inst16|selfalgs\(1))))) # (!\inst|ii~9_combout\ & (\inst16|selfalgs\(3) & (\inst|ii~q\ & !\inst16|selfalgs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(3),
	datab => \inst|ii~9_combout\,
	datac => \inst|ii~q\,
	datad => \inst16|selfalgs\(1),
	combout => \inst|ii~10_combout\);

-- Location: FF_X25_Y3_N19
\inst|ii\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|ii~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ii~q\);

-- Location: LCCOMB_X25_Y3_N24
\inst106|valor_interno~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst106|valor_interno~feeder_combout\ = \inst|ii~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ii~q\,
	combout => \inst106|valor_interno~feeder_combout\);

-- Location: FF_X25_Y3_N25
\inst106|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst106|valor_interno~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst106|valor_interno~q\);

-- Location: LCCOMB_X27_Y4_N30
\inst700666|AUX|valor_interno[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|AUX|valor_interno[15]~feeder_combout\);

-- Location: LCCOMB_X23_Y8_N20
\inst700666|inst1000|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|inst1000|Equal1~2_combout\ = (\inst107|selregw\(0) & \inst107|selregw\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(0),
	datad => \inst107|selregw\(2),
	combout => \inst700666|inst1000|Equal1~2_combout\);

-- Location: FF_X27_Y4_N31
\inst700666|AUX|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: LCCOMB_X27_Y5_N4
\inst700666|AUX|valor_interno[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[14]~feeder_combout\ = \inst24|valor_interno\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(14),
	combout => \inst700666|AUX|valor_interno[14]~feeder_combout\);

-- Location: FF_X27_Y5_N5
\inst700666|AUX|valor_interno[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[14]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: LCCOMB_X27_Y4_N20
\inst700666|AUX|valor_interno[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[13]~feeder_combout\ = \inst24|valor_interno\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(13),
	combout => \inst700666|AUX|valor_interno[13]~feeder_combout\);

-- Location: FF_X27_Y4_N21
\inst700666|AUX|valor_interno[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[13]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: LCCOMB_X27_Y4_N26
\inst700666|AUX|valor_interno[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(12),
	combout => \inst700666|AUX|valor_interno[12]~feeder_combout\);

-- Location: FF_X27_Y4_N27
\inst700666|AUX|valor_interno[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[12]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: LCCOMB_X27_Y5_N6
\inst700666|AUX|valor_interno[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[11]~feeder_combout\ = \inst24|valor_interno\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(11),
	combout => \inst700666|AUX|valor_interno[11]~feeder_combout\);

-- Location: FF_X27_Y5_N7
\inst700666|AUX|valor_interno[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[11]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: LCCOMB_X27_Y4_N24
\inst700666|AUX|valor_interno[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(10),
	combout => \inst700666|AUX|valor_interno[10]~feeder_combout\);

-- Location: FF_X27_Y4_N25
\inst700666|AUX|valor_interno[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[10]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LCCOMB_X27_Y5_N12
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

-- Location: FF_X27_Y5_N13
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(9));

-- Location: FF_X27_Y4_N19
\inst700666|AUX|valor_interno[8]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(8));

-- Location: LCCOMB_X27_Y4_N16
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

-- Location: FF_X27_Y4_N17
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(7));

-- Location: FF_X27_Y4_N3
\inst700666|AUX|valor_interno[6]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(6));

-- Location: FF_X27_Y4_N5
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: LCCOMB_X27_Y4_N10
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

-- Location: FF_X27_Y4_N11
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(4));

-- Location: LCCOMB_X27_Y4_N12
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

-- Location: FF_X27_Y4_N13
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(3));

-- Location: LCCOMB_X27_Y4_N14
\inst700666|AUX|valor_interno[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(2),
	combout => \inst700666|AUX|valor_interno[2]~feeder_combout\);

-- Location: FF_X27_Y4_N15
\inst700666|AUX|valor_interno[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[2]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: FF_X27_Y4_N9
\inst700666|AUX|valor_interno[1]\ : dffeas
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(1));

-- Location: LCCOMB_X27_Y4_N22
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

-- Location: FF_X27_Y4_N23
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
	ena => \inst700666|inst1000|Equal1~2_combout\,
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


