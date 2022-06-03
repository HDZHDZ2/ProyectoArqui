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

-- DATE "06/02/2022 14:05:41"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- n	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[14]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[12]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[10]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[8]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCA_D[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[15]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[13]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACCB_D[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[7]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[2]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX_D[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[14]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[13]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[12]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[11]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[5]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IX_D[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[15]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[13]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[12]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[4]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IY_D[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[14]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[11]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[9]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SP_D[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RELOJ	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|opres[16]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RELOJ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \inst19|Equal2~5_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \inst1|mem~0feeder_combout\ : std_logic;
SIGNAL \inst1|mem~0_q\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \inst19|Equal2~4_combout\ : std_logic;
SIGNAL \inst19|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \inst19|Equal2~2_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \inst19|Equal2~0_combout\ : std_logic;
SIGNAL \inst19|Equal2~1_combout\ : std_logic;
SIGNAL \inst19|Equal2~3_combout\ : std_logic;
SIGNAL \inst19|Equal0~1_combout\ : std_logic;
SIGNAL \inst19|WideNor0~combout\ : std_logic;
SIGNAL \inst16|selc~q\ : std_logic;
SIGNAL \inst20|Mux16~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst19|Equal0~2_combout\ : std_logic;
SIGNAL \inst19|Equal2~6_combout\ : std_logic;
SIGNAL \inst9|selregwo[0]~0_combout\ : std_logic;
SIGNAL \inst107|selregw[0]~feeder_combout\ : std_logic;
SIGNAL \inst12|Equal12~1_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst202|Mux16~2_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst12|Equal12~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux0~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[15]~0_combout\ : std_logic;
SIGNAL \inst33|opres[15]~2_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux1~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst33|opres[14]~30_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux2~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux3~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst33|opres[12]~26_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux4~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux5~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst33|opres[10]~22_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux22~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux7~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst33|opres[8]~18_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst202|Mux24~0_combout\ : std_logic;
SIGNAL \inst202|Mux16~3_combout\ : std_logic;
SIGNAL \inst202|Mux24~1_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst202|Mux25~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst33|opres[6]~14_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst202|Mux26~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst202|Mux27~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst33|opres[4]~10_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux28~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux13~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst33|opres[2]~6_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst202|Mux30~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux15~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~1_cout\ : std_logic;
SIGNAL \inst33|Add0~2_combout\ : std_logic;
SIGNAL \inst33|opres[0]~32_combout\ : std_logic;
SIGNAL \inst33|opres[0]~33_combout\ : std_logic;
SIGNAL \inst33|opres[16]~0_combout\ : std_logic;
SIGNAL \inst33|opres[16]~0clkctrl_outclk\ : std_logic;
SIGNAL \inst20|Mux31~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst202|Mux31~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \inst33|Add0~3\ : std_logic;
SIGNAL \inst33|Add0~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~4_combout\ : std_logic;
SIGNAL \inst33|opres[1]~5_combout\ : std_logic;
SIGNAL \inst20|Mux30~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux14~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[1]~14_combout\ : std_logic;
SIGNAL \inst33|Add0~5\ : std_logic;
SIGNAL \inst33|Add0~6_combout\ : std_logic;
SIGNAL \inst33|opres[2]~7_combout\ : std_logic;
SIGNAL \inst20|Mux29~0_combout\ : std_logic;
SIGNAL \inst202|Mux29~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[2]~13_combout\ : std_logic;
SIGNAL \inst33|Add0~7\ : std_logic;
SIGNAL \inst33|Add0~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~8_combout\ : std_logic;
SIGNAL \inst33|opres[3]~9_combout\ : std_logic;
SIGNAL \inst20|Mux28~0_combout\ : std_logic;
SIGNAL \inst202|Mux12~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[3]~12_combout\ : std_logic;
SIGNAL \inst33|Add0~9\ : std_logic;
SIGNAL \inst33|Add0~10_combout\ : std_logic;
SIGNAL \inst33|opres[4]~11_combout\ : std_logic;
SIGNAL \inst20|Mux27~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux11~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[4]~11_combout\ : std_logic;
SIGNAL \inst33|Add0~11\ : std_logic;
SIGNAL \inst33|Add0~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~12_combout\ : std_logic;
SIGNAL \inst33|opres[5]~13_combout\ : std_logic;
SIGNAL \inst20|Mux26~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux10~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[5]~10_combout\ : std_logic;
SIGNAL \inst33|Add0~13\ : std_logic;
SIGNAL \inst33|Add0~14_combout\ : std_logic;
SIGNAL \inst33|opres[6]~15_combout\ : std_logic;
SIGNAL \inst20|Mux25~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux9~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[6]~9_combout\ : std_logic;
SIGNAL \inst33|Add0~15\ : std_logic;
SIGNAL \inst33|Add0~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~16_combout\ : std_logic;
SIGNAL \inst33|opres[7]~17_combout\ : std_logic;
SIGNAL \inst20|Mux24~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux8~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst33|Add0~17\ : std_logic;
SIGNAL \inst33|Add0~18_combout\ : std_logic;
SIGNAL \inst33|opres[8]~19_combout\ : std_logic;
SIGNAL \inst20|Mux23~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \inst202|Mux23~0_combout\ : std_logic;
SIGNAL \inst202|Mux23~1_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[8]~7_combout\ : std_logic;
SIGNAL \inst33|Add0~19\ : std_logic;
SIGNAL \inst33|Add0~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~20_combout\ : std_logic;
SIGNAL \inst33|opres[9]~21_combout\ : std_logic;
SIGNAL \inst20|Mux22~0_combout\ : std_logic;
SIGNAL \inst700666|ACCA|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux6~0_combout\ : std_logic;
SIGNAL \muxSel1|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst33|Add0~21\ : std_logic;
SIGNAL \inst33|Add0~22_combout\ : std_logic;
SIGNAL \inst33|opres[10]~23_combout\ : std_logic;
SIGNAL \inst20|Mux21~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst202|Mux21~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst33|Add0~23\ : std_logic;
SIGNAL \inst33|Add0~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~24_combout\ : std_logic;
SIGNAL \inst33|opres[11]~25_combout\ : std_logic;
SIGNAL \inst20|Mux20~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst202|Mux20~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[11]~4_combout\ : std_logic;
SIGNAL \inst33|Add0~25\ : std_logic;
SIGNAL \inst33|Add0~26_combout\ : std_logic;
SIGNAL \inst33|opres[12]~27_combout\ : std_logic;
SIGNAL \inst20|Mux19~0_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst202|Mux19~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst33|Add0~27\ : std_logic;
SIGNAL \inst33|Add0~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~28_combout\ : std_logic;
SIGNAL \inst33|opres[13]~29_combout\ : std_logic;
SIGNAL \inst20|Mux18~0_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst202|Mux18~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[13]~2_combout\ : std_logic;
SIGNAL \inst33|Add0~29\ : std_logic;
SIGNAL \inst33|Add0~30_combout\ : std_logic;
SIGNAL \inst33|opres[14]~31_combout\ : std_logic;
SIGNAL \inst20|Mux17~0_combout\ : std_logic;
SIGNAL \inst700666|ACCB|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst202|Mux17~0_combout\ : std_logic;
SIGNAL \muxSel2|$00000|auto_generated|result_node[14]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~31\ : std_logic;
SIGNAL \inst33|Add0~33\ : std_logic;
SIGNAL \inst33|Add0~34_combout\ : std_logic;
SIGNAL \inst33|opres[16]~34_combout\ : std_logic;
SIGNAL \inst|ci~q\ : std_logic;
SIGNAL \inst33|opres[15]~1_combout\ : std_logic;
SIGNAL \inst33|Add0~32_combout\ : std_logic;
SIGNAL \inst33|opres[15]~3_combout\ : std_logic;
SIGNAL \inst|ni~q\ : std_logic;
SIGNAL \inst101|valor_interno~q\ : std_logic;
SIGNAL \inst33|WideOr0~2_combout\ : std_logic;
SIGNAL \inst33|WideOr0~1_combout\ : std_logic;
SIGNAL \inst33|WideOr0~3_combout\ : std_logic;
SIGNAL \inst33|WideOr0~0_combout\ : std_logic;
SIGNAL \inst33|WideOr0~4_combout\ : std_logic;
SIGNAL \inst|zi~q\ : std_logic;
SIGNAL \inst102|valor_interno~q\ : std_logic;
SIGNAL \inst|vi~0_combout\ : std_logic;
SIGNAL \inst|vi~feeder_combout\ : std_logic;
SIGNAL \inst|vi~q\ : std_logic;
SIGNAL \inst103|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst103|valor_interno~q\ : std_logic;
SIGNAL \inst104|valor_interno~q\ : std_logic;
SIGNAL \inst|hi~0_combout\ : std_logic;
SIGNAL \inst|hi~feeder_combout\ : std_logic;
SIGNAL \inst|hi~q\ : std_logic;
SIGNAL \inst105|valor_interno~feeder_combout\ : std_logic;
SIGNAL \inst105|valor_interno~q\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[15]~feeder_combout\ : std_logic;
SIGNAL \inst12|Equal12~2_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[14]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[13]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[12]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[11]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[10]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[9]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[8]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[7]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[6]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[5]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[4]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[3]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[2]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[1]~feeder_combout\ : std_logic;
SIGNAL \inst700666|AUX|valor_interno[0]~feeder_combout\ : std_logic;
SIGNAL \inst16|selfalgs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst34|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCA|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst700666|ACCB|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst16|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst700666|AUX|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst24|valor_interno\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst107|selregw\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|valor_interno\ : std_logic_vector(15 DOWNTO 0);
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

\inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst34|valor_interno\(5) & \inst34|valor_interno\(4) & \inst34|valor_interno\(3) & \inst34|valor_interno\(2) & \inst34|valor_interno\(1) & \inst34|valor_interno\(0));

\inst1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|mem_rtl_0|auto_generated|ram_block1a1\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|mem_rtl_0|auto_generated|ram_block1a2\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|mem_rtl_0|auto_generated|ram_block1a3\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|mem_rtl_0|auto_generated|ram_block1a4\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|mem_rtl_0|auto_generated|ram_block1a5\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|mem_rtl_0|auto_generated|ram_block1a6\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|mem_rtl_0|auto_generated|ram_block1a7\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst1|mem_rtl_0|auto_generated|ram_block1a8\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst1|mem_rtl_0|auto_generated|ram_block1a9\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst1|mem_rtl_0|auto_generated|ram_block1a10\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst1|mem_rtl_0|auto_generated|ram_block1a11\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst1|mem_rtl_0|auto_generated|ram_block1a12\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst1|mem_rtl_0|auto_generated|ram_block1a13\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst1|mem_rtl_0|auto_generated|ram_block1a14\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst1|mem_rtl_0|auto_generated|ram_block1a15\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst1|mem_rtl_0|auto_generated|ram_block1a16\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst1|mem_rtl_0|auto_generated|ram_block1a17\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst1|mem_rtl_0|auto_generated|ram_block1a18\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst1|mem_rtl_0|auto_generated|ram_block1a19\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst1|mem_rtl_0|auto_generated|ram_block1a20\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst1|mem_rtl_0|auto_generated|ram_block1a21\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst1|mem_rtl_0|auto_generated|ram_block1a22\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst1|mem_rtl_0|auto_generated|ram_block1a23\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst1|mem_rtl_0|auto_generated|ram_block1a24\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst1|mem_rtl_0|auto_generated|ram_block1a25\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst1|mem_rtl_0|auto_generated|ram_block1a26\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst1|mem_rtl_0|auto_generated|ram_block1a27\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst1|mem_rtl_0|auto_generated|ram_block1a28\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst1|mem_rtl_0|auto_generated|ram_block1a29\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst1|mem_rtl_0|auto_generated|ram_block1a30\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst1|mem_rtl_0|auto_generated|ram_block1a31\ <= \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\inst33|opres[16]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|opres[16]~0_combout\);

\RELOJ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RELOJ~input_o\);
\ALT_INV_RELOJ~inputclkctrl_outclk\ <= NOT \RELOJ~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y11_N9
\n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|valor_interno~q\,
	devoe => ww_devoe,
	o => \n~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst102|valor_interno~q\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst103|valor_interno~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst104|valor_interno~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\h~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst105|valor_interno~q\,
	devoe => ww_devoe,
	o => \h~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\i~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ACCA_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCA_D[15]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ACCA_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCA_D[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\ACCA_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCA_D[13]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\ACCA_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCA_D[12]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\ACCA_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCA_D[11]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\ACCA_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCA_D[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\ACCA_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCA_D[9]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ACCA_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCA_D[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ACCA_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCA_D[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\ACCA_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCA_D[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ACCA_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCA_D[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ACCA_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCA_D[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ACCA_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCA_D[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ACCA_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCA_D[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\ACCA_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCA_D[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\ACCA_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCA|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCA_D[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\ACCB_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(15),
	devoe => ww_devoe,
	o => \ACCB_D[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\ACCB_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(14),
	devoe => ww_devoe,
	o => \ACCB_D[14]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\ACCB_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(13),
	devoe => ww_devoe,
	o => \ACCB_D[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ACCB_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(12),
	devoe => ww_devoe,
	o => \ACCB_D[12]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\ACCB_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(11),
	devoe => ww_devoe,
	o => \ACCB_D[11]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\ACCB_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(10),
	devoe => ww_devoe,
	o => \ACCB_D[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\ACCB_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(9),
	devoe => ww_devoe,
	o => \ACCB_D[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\ACCB_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(8),
	devoe => ww_devoe,
	o => \ACCB_D[8]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\ACCB_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(7),
	devoe => ww_devoe,
	o => \ACCB_D[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ACCB_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(6),
	devoe => ww_devoe,
	o => \ACCB_D[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\ACCB_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(5),
	devoe => ww_devoe,
	o => \ACCB_D[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\ACCB_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(4),
	devoe => ww_devoe,
	o => \ACCB_D[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ACCB_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(3),
	devoe => ww_devoe,
	o => \ACCB_D[3]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\ACCB_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(2),
	devoe => ww_devoe,
	o => \ACCB_D[2]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\ACCB_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(1),
	devoe => ww_devoe,
	o => \ACCB_D[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ACCB_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|ACCB|valor_interno\(0),
	devoe => ww_devoe,
	o => \ACCB_D[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\AUX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(15),
	devoe => ww_devoe,
	o => \AUX_D[15]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\AUX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(14),
	devoe => ww_devoe,
	o => \AUX_D[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\AUX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(13),
	devoe => ww_devoe,
	o => \AUX_D[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\AUX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(12),
	devoe => ww_devoe,
	o => \AUX_D[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\AUX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(11),
	devoe => ww_devoe,
	o => \AUX_D[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\AUX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(10),
	devoe => ww_devoe,
	o => \AUX_D[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\AUX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(9),
	devoe => ww_devoe,
	o => \AUX_D[9]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\AUX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(8),
	devoe => ww_devoe,
	o => \AUX_D[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\AUX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(7),
	devoe => ww_devoe,
	o => \AUX_D[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\AUX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(6),
	devoe => ww_devoe,
	o => \AUX_D[6]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\AUX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(5),
	devoe => ww_devoe,
	o => \AUX_D[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\AUX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(4),
	devoe => ww_devoe,
	o => \AUX_D[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\AUX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(3),
	devoe => ww_devoe,
	o => \AUX_D[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\AUX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(2),
	devoe => ww_devoe,
	o => \AUX_D[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\AUX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(1),
	devoe => ww_devoe,
	o => \AUX_D[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\AUX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst700666|AUX|valor_interno\(0),
	devoe => ww_devoe,
	o => \AUX_D[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\IX_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\IX_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\IX_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\IX_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[12]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\IX_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[11]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\IX_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\IX_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[9]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\IX_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[8]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\IX_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\IX_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\IX_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\IX_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\IX_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[3]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\IX_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\IX_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\IX_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IX_D[0]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\IY_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\IY_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[14]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\IY_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[13]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\IY_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[12]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\IY_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[11]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\IY_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[10]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\IY_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[9]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\IY_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[8]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\IY_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[7]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\IY_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\IY_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\IY_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[4]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\IY_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\IY_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\IY_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\IY_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \IY_D[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\SP_D[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[15]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\SP_D[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[14]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\SP_D[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[13]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\SP_D[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[12]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\SP_D[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[11]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\SP_D[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\SP_D[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[9]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\SP_D[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\SP_D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[7]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\SP_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\SP_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\SP_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SP_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\SP_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\SP_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\SP_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SP_D[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\RELOJ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RELOJ,
	o => \RELOJ~input_o\);

-- Location: CLKCTRL_G2
\RELOJ~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X23_Y11_N10
\inst34|valor_interno[0]~15\ : cycloneive_lcell_comb
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

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X23_Y11_N11
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

-- Location: LCCOMB_X23_Y11_N16
\inst34|valor_interno[1]~5\ : cycloneive_lcell_comb
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

-- Location: FF_X23_Y11_N17
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

-- Location: LCCOMB_X23_Y11_N18
\inst34|valor_interno[2]~7\ : cycloneive_lcell_comb
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

-- Location: FF_X23_Y11_N19
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

-- Location: LCCOMB_X23_Y11_N20
\inst34|valor_interno[3]~9\ : cycloneive_lcell_comb
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

-- Location: FF_X23_Y11_N21
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

-- Location: LCCOMB_X23_Y11_N22
\inst34|valor_interno[4]~11\ : cycloneive_lcell_comb
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

-- Location: FF_X23_Y11_N23
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

-- Location: LCCOMB_X23_Y11_N24
\inst34|valor_interno[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|valor_interno[5]~13_combout\ = \inst34|valor_interno[4]~12\ $ (!\inst34|valor_interno\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst34|valor_interno\(5),
	cin => \inst34|valor_interno[4]~12\,
	combout => \inst34|valor_interno[5]~13_combout\);

-- Location: FF_X23_Y11_N25
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

-- Location: M9K_X22_Y11_N0
\inst1|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007E99990001B7894000860004000C61234",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mem_prog.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_inst:inst1|altsyncram:mem_rtl_0|altsyncram_pi41:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 51,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \RELOJ~inputclkctrl_outclk\,
	portaaddr => \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y11_N26
\inst19|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~5_combout\ = (\inst1|mem_rtl_0|auto_generated|ram_block1a19\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a20\ & !\inst1|mem_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a19\,
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a20\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a23\,
	combout => \inst19|Equal2~5_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst1|mem~0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mem~0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|mem~0feeder_combout\);

-- Location: FF_X17_Y11_N13
\inst1|mem~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst1|mem~0feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mem~0_q\);

-- Location: LCCOMB_X21_Y11_N22
\inst19|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~4_combout\ = (\inst1|mem_rtl_0|auto_generated|ram_block1a16\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a18\ & ((!\inst1|mem~0_q\) # (!\inst1|mem_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a22\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a16\,
	datac => \inst1|mem~0_q\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a18\,
	combout => \inst19|Equal2~4_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst19|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~0_combout\ = ((!\inst1|mem_rtl_0|auto_generated|ram_block1a19\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a20\ & !\inst1|mem_rtl_0|auto_generated|ram_block1a16\))) # (!\inst1|mem~0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem~0_q\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a19\,
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a20\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a16\,
	combout => \inst19|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst19|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~2_combout\ = (!\inst1|mem_rtl_0|auto_generated|ram_block1a25\ & !\inst1|mem_rtl_0|auto_generated|ram_block1a24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a25\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a24\,
	combout => \inst19|Equal2~2_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst19|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~0_combout\ = (!\inst1|mem_rtl_0|auto_generated|ram_block1a27\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a17\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a28\ & !\inst1|mem_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a27\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a17\,
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a28\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a26\,
	combout => \inst19|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst19|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~1_combout\ = (!\inst1|mem_rtl_0|auto_generated|ram_block1a30\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a29\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a31\ & \inst19|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a30\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a29\,
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a31\,
	datad => \inst19|Equal2~0_combout\,
	combout => \inst19|Equal2~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst19|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~3_combout\ = (\inst1|mem~0_q\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a21\ & (\inst19|Equal2~2_combout\ & \inst19|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem~0_q\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a21\,
	datac => \inst19|Equal2~2_combout\,
	datad => \inst19|Equal2~1_combout\,
	combout => \inst19|Equal2~3_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst19|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~1_combout\ = (\inst1|mem_rtl_0|auto_generated|ram_block1a18\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a23\ & (\inst19|Equal0~0_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a18\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a23\,
	datac => \inst19|Equal0~0_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst19|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y7_N30
\inst19|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|WideNor0~combout\ = (\inst19|Equal0~1_combout\) # ((\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst19|Equal2~4_combout\,
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst19|WideNor0~combout\);

-- Location: FF_X20_Y7_N31
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

-- Location: LCCOMB_X20_Y7_N22
\inst20|Mux16~0\ : cycloneive_lcell_comb
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

-- Location: FF_X20_Y7_N23
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

-- Location: LCCOMB_X21_Y7_N20
\inst700666|ACCB|valor_interno[15]~feeder\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X23_Y11_N0
\inst19|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal0~2_combout\ = (\inst1|mem_rtl_0|auto_generated|ram_block1a22\ & \inst19|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a22\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst19|Equal0~2_combout\);

-- Location: FF_X23_Y11_N1
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

-- Location: FF_X20_Y8_N31
\inst107|selregw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst16|selregw\(2),
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(2));

-- Location: LCCOMB_X21_Y11_N30
\inst19|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|Equal2~6_combout\ = (\inst19|Equal2~4_combout\ & (\inst19|Equal2~5_combout\ & \inst19|Equal2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datac => \inst19|Equal2~5_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst19|Equal2~6_combout\);

-- Location: LCCOMB_X21_Y11_N16
\inst9|selregwo[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|selregwo[0]~0_combout\ = (\inst19|Equal0~1_combout\ & (!\inst1|mem_rtl_0|auto_generated|ram_block1a22\)) # (!\inst19|Equal0~1_combout\ & ((\inst19|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a22\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst9|selregwo[0]~0_combout\);

-- Location: FF_X21_Y11_N17
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

-- Location: LCCOMB_X20_Y8_N6
\inst107|selregw[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst107|selregw[0]~feeder_combout\ = \inst16|selregw\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|selregw\(0),
	combout => \inst107|selregw[0]~feeder_combout\);

-- Location: FF_X20_Y8_N7
\inst107|selregw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst107|selregw[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst107|selregw\(0));

-- Location: LCCOMB_X20_Y8_N24
\inst12|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal12~1_combout\ = (\inst107|selregw\(2) & !\inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst12|Equal12~1_combout\);

-- Location: FF_X21_Y7_N21
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(15));

-- Location: LCCOMB_X20_Y7_N24
\inst202|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux16~2_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a15\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(15) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(15),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a15\,
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \inst202|Mux16~2_combout\);

-- Location: FF_X20_Y7_N25
\inst14|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux16~2_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(15));

-- Location: LCCOMB_X20_Y7_N2
\muxSel2|$00000|auto_generated|result_node[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[15]~0_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & (\inst20|Mux16~0_combout\)) # (!\inst19|Equal2~6_combout\ & ((\inst14|valor_interno\(15)))))) # (!\inst12|Equal12~1_combout\ & 
-- (((\inst14|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux16~0_combout\,
	datab => \inst14|valor_interno\(15),
	datac => \inst12|Equal12~1_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: LCCOMB_X20_Y8_N2
\inst12|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal12~0_combout\ = (!\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst12|Equal12~0_combout\);

-- Location: LCCOMB_X20_Y7_N6
\inst700666|ACCA|valor_interno[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[15]~feeder_combout\ = \inst24|valor_interno\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(15),
	combout => \inst700666|ACCA|valor_interno[15]~feeder_combout\);

-- Location: FF_X20_Y7_N7
\inst700666|ACCA|valor_interno[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[15]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(15));

-- Location: LCCOMB_X20_Y7_N16
\inst202|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux0~0_combout\ = (\inst700666|ACCA|valor_interno\(15) & (\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(15),
	datab => \inst19|Equal2~5_combout\,
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux0~0_combout\);

-- Location: FF_X20_Y7_N17
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

-- Location: LCCOMB_X20_Y7_N18
\muxSel1|$00000|auto_generated|result_node[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[15]~0_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & (\inst20|Mux16~0_combout\)) # (!\inst19|Equal2~6_combout\ & ((\inst700|valor_interno\(15)))))) # (!\inst12|Equal12~0_combout\ & 
-- (((\inst700|valor_interno\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux16~0_combout\,
	datab => \inst12|Equal12~0_combout\,
	datac => \inst700|valor_interno\(15),
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\);

-- Location: FF_X21_Y11_N21
\inst16|selfalgs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~input_o\,
	asdata => \inst19|Equal2~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(1));

-- Location: FF_X21_Y11_N3
\inst16|selfalgs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst19|Equal0~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|selfalgs\(0));

-- Location: LCCOMB_X20_Y7_N14
\inst33|opres[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~2_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[15]~0_combout\ & ((!\inst16|selfalgs\(1)) # (!\muxSel1|$00000|auto_generated|result_node[15]~0_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[15]~0_combout\ & (\muxSel1|$00000|auto_generated|result_node[15]~0_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datac => \inst16|selfalgs\(1),
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[15]~2_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst700666|ACCA|valor_interno[14]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N21
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

-- Location: LCCOMB_X18_Y11_N10
\inst202|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux1~0_combout\ = (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(14) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst700666|ACCA|valor_interno\(14),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux1~0_combout\);

-- Location: FF_X18_Y11_N11
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

-- Location: LCCOMB_X18_Y11_N12
\muxSel1|$00000|auto_generated|result_node[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[14]~1_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux17~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(14))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(14),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst20|Mux17~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst33|opres[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~30_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[14]~1_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[14]~1_combout\ & ((\muxSel1|$00000|auto_generated|result_node[14]~1_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel2|$00000|auto_generated|result_node[14]~1_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	combout => \inst33|opres[14]~30_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst700666|ACCA|valor_interno[13]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N15
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

-- Location: LCCOMB_X20_Y8_N28
\inst202|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux2~0_combout\ = (\inst700666|ACCA|valor_interno\(13) & (\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(13),
	datab => \inst19|Equal2~5_combout\,
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux2~0_combout\);

-- Location: FF_X20_Y8_N29
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

-- Location: LCCOMB_X20_Y8_N0
\muxSel1|$00000|auto_generated|result_node[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[13]~2_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux18~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(13))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(13),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst20|Mux18~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst700666|ACCA|valor_interno[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(12),
	combout => \inst700666|ACCA|valor_interno[12]~feeder_combout\);

-- Location: FF_X19_Y8_N17
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

-- Location: LCCOMB_X20_Y11_N26
\inst202|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux3~0_combout\ = (\inst700666|ACCA|valor_interno\(12) & (\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(12),
	datab => \inst19|Equal2~5_combout\,
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux3~0_combout\);

-- Location: FF_X20_Y11_N27
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

-- Location: LCCOMB_X20_Y11_N0
\muxSel1|$00000|auto_generated|result_node[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[12]~3_combout\ = (\inst19|Equal2~6_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux19~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(12))))) # (!\inst19|Equal2~6_combout\ & 
-- (((\inst700|valor_interno\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~6_combout\,
	datab => \inst12|Equal12~0_combout\,
	datac => \inst700|valor_interno\(12),
	datad => \inst20|Mux19~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst33|opres[12]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~26_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel1|$00000|auto_generated|result_node[12]~3_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst16|selfalgs\(0),
	datac => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	combout => \inst33|opres[12]~26_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst700666|ACCA|valor_interno[11]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y9_N17
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
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(11));

-- Location: LCCOMB_X21_Y9_N24
\inst202|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux4~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst700666|ACCA|valor_interno\(11) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst700666|ACCA|valor_interno\(11),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~4_combout\,
	combout => \inst202|Mux4~0_combout\);

-- Location: FF_X21_Y9_N25
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

-- Location: LCCOMB_X20_Y9_N14
\muxSel1|$00000|auto_generated|result_node[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[11]~4_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux20~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(11))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(11),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux20~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: FF_X20_Y9_N27
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

-- Location: LCCOMB_X21_Y9_N2
\inst700666|ACCA|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|ACCA|valor_interno[10]~feeder_combout\);

-- Location: FF_X21_Y9_N3
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
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(10));

-- Location: LCCOMB_X21_Y9_N6
\inst202|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux5~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst700666|ACCA|valor_interno\(10) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst700666|ACCA|valor_interno\(10),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~4_combout\,
	combout => \inst202|Mux5~0_combout\);

-- Location: FF_X21_Y9_N7
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

-- Location: LCCOMB_X20_Y9_N18
\muxSel1|$00000|auto_generated|result_node[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[10]~5_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & (\inst20|Mux21~0_combout\)) # (!\inst19|Equal2~6_combout\ & ((\inst700|valor_interno\(10)))))) # (!\inst12|Equal12~0_combout\ & 
-- (((\inst700|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux21~0_combout\,
	datab => \inst12|Equal12~0_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst700|valor_interno\(10),
	combout => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X20_Y9_N0
\inst33|opres[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~22_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel1|$00000|auto_generated|result_node[10]~5_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	combout => \inst33|opres[10]~22_combout\);

-- Location: LCCOMB_X21_Y7_N6
\inst700666|ACCB|valor_interno[9]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y7_N7
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(9));

-- Location: LCCOMB_X23_Y11_N4
\inst202|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux22~0_combout\ = (\inst19|Equal0~1_combout\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a9\)) # (!\inst19|Equal0~1_combout\ & (((\inst700666|ACCB|valor_interno\(9) & \inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a9\,
	datab => \inst700666|ACCB|valor_interno\(9),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux22~0_combout\);

-- Location: FF_X23_Y11_N5
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

-- Location: LCCOMB_X20_Y9_N16
\muxSel2|$00000|auto_generated|result_node[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[9]~6_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux22~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(9))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(9),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux22~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X19_Y8_N22
\inst700666|ACCA|valor_interno[8]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N23
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
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(8));

-- Location: LCCOMB_X18_Y11_N6
\inst202|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux7~0_combout\ = (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(8) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst700666|ACCA|valor_interno\(8),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux7~0_combout\);

-- Location: FF_X18_Y11_N7
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

-- Location: LCCOMB_X18_Y11_N20
\muxSel1|$00000|auto_generated|result_node[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[8]~7_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux23~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(8))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(8),
	datac => \inst20|Mux23~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X17_Y11_N22
\inst33|opres[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~18_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel1|$00000|auto_generated|result_node[8]~7_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	combout => \inst33|opres[8]~18_combout\);

-- Location: LCCOMB_X19_Y7_N10
\inst700666|ACCB|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(7),
	combout => \inst700666|ACCB|valor_interno[7]~feeder_combout\);

-- Location: FF_X19_Y7_N11
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

-- Location: LCCOMB_X21_Y11_N20
\inst202|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux24~0_combout\ = (\inst1|mem~0_q\ & \inst19|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mem~0_q\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux24~0_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst202|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux16~3_combout\ = (\inst19|Equal2~4_combout\ & (\inst19|Equal2~3_combout\ & (\inst19|Equal2~5_combout\ & !\inst19|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst19|Equal2~3_combout\,
	datac => \inst19|Equal2~5_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux16~3_combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst202|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux24~1_combout\ = (\inst700666|ACCB|valor_interno\(7) & ((\inst202|Mux16~3_combout\) # ((\inst1|mem_rtl_0|auto_generated|ram_block1a7\ & \inst202|Mux24~0_combout\)))) # (!\inst700666|ACCB|valor_interno\(7) & 
-- (\inst1|mem_rtl_0|auto_generated|ram_block1a7\ & (\inst202|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(7),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a7\,
	datac => \inst202|Mux24~0_combout\,
	datad => \inst202|Mux16~3_combout\,
	combout => \inst202|Mux24~1_combout\);

-- Location: FF_X21_Y11_N29
\inst14|valor_interno[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux24~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(7));

-- Location: LCCOMB_X20_Y7_N28
\muxSel2|$00000|auto_generated|result_node[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[7]~8_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux24~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(7))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(7),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst20|Mux24~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: FF_X20_Y8_N25
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

-- Location: LCCOMB_X20_Y8_N16
\inst202|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux25~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a6\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(6) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(6),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a6\,
	datac => \inst19|Equal0~1_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \inst202|Mux25~0_combout\);

-- Location: FF_X20_Y8_N17
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

-- Location: LCCOMB_X20_Y8_N20
\muxSel2|$00000|auto_generated|result_node[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[6]~9_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux25~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(6))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(6),
	datab => \inst20|Mux25~0_combout\,
	datac => \inst12|Equal12~1_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X20_Y8_N22
\inst33|opres[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~14_combout\ = (\inst16|selfalgs\(0) & ((\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst16|selfalgs\(1)) # (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\))) # 
-- (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (\muxSel1|$00000|auto_generated|result_node[6]~9_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	datac => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datad => \inst16|selfalgs\(1),
	combout => \inst33|opres[6]~14_combout\);

-- Location: FF_X18_Y11_N1
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

-- Location: LCCOMB_X18_Y11_N22
\inst202|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux26~0_combout\ = (\inst19|Equal0~1_combout\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a5\)) # (!\inst19|Equal0~1_combout\ & (((\inst700666|ACCB|valor_interno\(5) & \inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a5\,
	datab => \inst700666|ACCB|valor_interno\(5),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux26~0_combout\);

-- Location: FF_X18_Y11_N23
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

-- Location: LCCOMB_X18_Y11_N16
\muxSel2|$00000|auto_generated|result_node[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[5]~10_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux26~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(5))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(5),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux26~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: FF_X19_Y10_N17
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

-- Location: LCCOMB_X21_Y11_N12
\inst202|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux27~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a4\)))) # (!\inst19|Equal0~1_combout\ & (\inst19|Equal2~6_combout\ & ((\inst700666|ACCB|valor_interno\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~6_combout\,
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a4\,
	datac => \inst19|Equal0~1_combout\,
	datad => \inst700666|ACCB|valor_interno\(4),
	combout => \inst202|Mux27~0_combout\);

-- Location: FF_X21_Y11_N13
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

-- Location: LCCOMB_X18_Y11_N30
\muxSel2|$00000|auto_generated|result_node[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[4]~11_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux27~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(4))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(4),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux27~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst33|opres[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~10_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel2|$00000|auto_generated|result_node[4]~11_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \inst16|selfalgs\(1),
	datac => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[4]~10_combout\);

-- Location: LCCOMB_X19_Y7_N4
\inst700666|ACCB|valor_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(3),
	combout => \inst700666|ACCB|valor_interno[3]~feeder_combout\);

-- Location: FF_X19_Y7_N5
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(3));

-- Location: LCCOMB_X21_Y10_N24
\inst202|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux28~0_combout\ = (\inst19|Equal0~1_combout\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a3\)) # (!\inst19|Equal0~1_combout\ & (((\inst700666|ACCB|valor_interno\(3) & \inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a3\,
	datab => \inst700666|ACCB|valor_interno\(3),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux28~0_combout\);

-- Location: FF_X21_Y10_N25
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

-- Location: LCCOMB_X20_Y10_N14
\muxSel2|$00000|auto_generated|result_node[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[3]~12_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux28~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(3))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(3),
	datac => \inst20|Mux28~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X21_Y9_N18
\inst700666|ACCA|valor_interno[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[2]~feeder_combout\ = \inst24|valor_interno\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(2),
	combout => \inst700666|ACCA|valor_interno[2]~feeder_combout\);

-- Location: FF_X21_Y9_N19
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
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(2));

-- Location: LCCOMB_X21_Y9_N10
\inst202|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux13~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst700666|ACCA|valor_interno\(2) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst700666|ACCA|valor_interno\(2),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~4_combout\,
	combout => \inst202|Mux13~0_combout\);

-- Location: FF_X21_Y9_N11
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

-- Location: LCCOMB_X20_Y10_N26
\muxSel1|$00000|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[2]~13_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux29~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(2))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(2),
	datac => \inst20|Mux29~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X20_Y10_N10
\inst33|opres[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~6_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\) # (!\inst16|selfalgs\(1)))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel2|$00000|auto_generated|result_node[2]~13_combout\))))) # (!\inst16|selfalgs\(0) & (\inst16|selfalgs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	combout => \inst33|opres[2]~6_combout\);

-- Location: FF_X20_Y11_N23
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(1));

-- Location: LCCOMB_X20_Y11_N14
\inst202|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux30~0_combout\ = (\inst700666|ACCB|valor_interno\(1) & ((\inst202|Mux16~3_combout\) # ((\inst1|mem_rtl_0|auto_generated|ram_block1a1\ & \inst202|Mux24~0_combout\)))) # (!\inst700666|ACCB|valor_interno\(1) & 
-- (\inst1|mem_rtl_0|auto_generated|ram_block1a1\ & (\inst202|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(1),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a1\,
	datac => \inst202|Mux24~0_combout\,
	datad => \inst202|Mux16~3_combout\,
	combout => \inst202|Mux30~0_combout\);

-- Location: FF_X20_Y11_N15
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

-- Location: LCCOMB_X20_Y11_N8
\muxSel2|$00000|auto_generated|result_node[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[1]~14_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux30~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(1))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(1),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux30~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: FF_X19_Y11_N7
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

-- Location: LCCOMB_X19_Y8_N8
\inst700666|ACCA|valor_interno[0]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N9
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

-- Location: LCCOMB_X21_Y11_N8
\inst202|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux15~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(0) & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst19|Equal2~4_combout\,
	datac => \inst700666|ACCA|valor_interno\(0),
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux15~0_combout\);

-- Location: FF_X21_Y11_N9
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

-- Location: LCCOMB_X20_Y11_N30
\muxSel1|$00000|auto_generated|result_node[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[0]~15_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & (\inst20|Mux31~0_combout\)) # (!\inst19|Equal2~6_combout\ & ((\inst700|valor_interno\(0)))))) # (!\inst12|Equal12~0_combout\ & 
-- (((\inst700|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst20|Mux31~0_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst700|valor_interno\(0),
	combout => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X19_Y10_N14
\inst33|Add0~1\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N16
\inst33|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~2_combout\ = (\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & (\inst33|Add0~1_cout\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & 
-- (!\inst33|Add0~1_cout\)))) # (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & (!\inst33|Add0~1_cout\)) # (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & 
-- ((\inst33|Add0~1_cout\) # (GND)))))
-- \inst33|Add0~3\ = CARRY((\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & !\inst33|Add0~1_cout\)) # (!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\ & 
-- ((!\inst33|Add0~1_cout\) # (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	datad => VCC,
	cin => \inst33|Add0~1_cout\,
	combout => \inst33|Add0~2_combout\,
	cout => \inst33|Add0~3\);

-- Location: LCCOMB_X20_Y11_N12
\inst33|opres[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~32_combout\ = (\inst16|selfalgs\(0) & (\inst16|selfalgs\(1))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & (\inst33|Add0~2_combout\)) # (!\inst16|selfalgs\(1) & ((\muxSel1|$00000|auto_generated|result_node[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \inst33|Add0~2_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	combout => \inst33|opres[0]~32_combout\);

-- Location: LCCOMB_X20_Y11_N18
\inst33|opres[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[0]~33_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[0]~15_combout\) # (!\inst33|opres[0]~32_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[0]~15_combout\ & ((\muxSel2|$00000|auto_generated|result_node[0]~15_combout\))))) # (!\inst16|selfalgs\(0) & (\inst33|opres[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[0]~32_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[0]~15_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\,
	combout => \inst33|opres[0]~33_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst33|opres[16]~0\ : cycloneive_lcell_comb
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

-- Location: CLKCTRL_G15
\inst33|opres[16]~0clkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X19_Y11_N12
\inst33|opres[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(0) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[0]~33_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(0),
	datab => \inst33|opres[0]~33_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(0));

-- Location: LCCOMB_X19_Y11_N6
\inst20|Mux31~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X20_Y11_N16
\inst700666|ACCB|valor_interno[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[0]~feeder_combout\ = \inst24|valor_interno\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(0),
	combout => \inst700666|ACCB|valor_interno[0]~feeder_combout\);

-- Location: FF_X20_Y11_N17
\inst700666|ACCB|valor_interno[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCB|valor_interno[0]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(0));

-- Location: LCCOMB_X20_Y11_N2
\inst202|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux31~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\inst19|Equal0~1_combout\ & (\inst19|Equal2~6_combout\ & (\inst700666|ACCB|valor_interno\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~6_combout\,
	datab => \inst700666|ACCB|valor_interno\(0),
	datac => \inst19|Equal0~1_combout\,
	datad => \inst1|mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \inst202|Mux31~0_combout\);

-- Location: FF_X20_Y11_N3
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

-- Location: LCCOMB_X20_Y11_N24
\muxSel2|$00000|auto_generated|result_node[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[0]~15_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & (\inst20|Mux31~0_combout\)) # (!\inst19|Equal2~6_combout\ & ((\inst14|valor_interno\(0)))))) # (!\inst12|Equal12~1_combout\ & 
-- (((\inst14|valor_interno\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst20|Mux31~0_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst14|valor_interno\(0),
	combout => \muxSel2|$00000|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X19_Y10_N18
\inst33|Add0~4\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N8
\inst33|opres[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~4_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~4_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~4_combout\,
	combout => \inst33|opres[1]~4_combout\);

-- Location: LCCOMB_X20_Y10_N0
\inst33|opres[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[1]~5_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[1]~14_combout\) # (!\inst33|opres[1]~4_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[1]~14_combout\ & ((\muxSel2|$00000|auto_generated|result_node[1]~14_combout\))))) # (!\inst16|selfalgs\(0) & (\inst33|opres[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst33|opres[1]~4_combout\,
	datac => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[1]~14_combout\,
	combout => \inst33|opres[1]~5_combout\);

-- Location: LCCOMB_X20_Y10_N2
\inst33|opres[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(1) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[1]~5_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres\(1),
	datac => \inst33|opres[1]~5_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(1));

-- Location: LCCOMB_X20_Y11_N28
\inst20|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux30~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(1),
	combout => \inst20|Mux30~0_combout\);

-- Location: FF_X20_Y11_N29
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

-- Location: LCCOMB_X19_Y8_N26
\inst700666|ACCA|valor_interno[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[1]~feeder_combout\ = \inst24|valor_interno\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|valor_interno\(1),
	combout => \inst700666|ACCA|valor_interno[1]~feeder_combout\);

-- Location: FF_X19_Y8_N27
\inst700666|ACCA|valor_interno[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|ACCA|valor_interno[1]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(1));

-- Location: LCCOMB_X20_Y11_N6
\inst202|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux14~0_combout\ = (\inst19|Equal2~3_combout\ & (\inst700666|ACCA|valor_interno\(1) & (\inst19|Equal2~4_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~3_combout\,
	datab => \inst700666|ACCA|valor_interno\(1),
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux14~0_combout\);

-- Location: FF_X20_Y11_N7
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

-- Location: LCCOMB_X20_Y11_N20
\muxSel1|$00000|auto_generated|result_node[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[1]~14_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux30~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(1))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(1),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux30~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[1]~14_combout\);

-- Location: LCCOMB_X19_Y10_N20
\inst33|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~6_combout\ = (\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (\inst33|Add0~5\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & 
-- (!\inst33|Add0~5\)))) # (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & (!\inst33|Add0~5\)) # (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & ((\inst33|Add0~5\) # 
-- (GND)))))
-- \inst33|Add0~7\ = CARRY((\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\ & !\inst33|Add0~5\)) # (!\muxSel2|$00000|auto_generated|result_node[2]~13_combout\ & ((!\inst33|Add0~5\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[2]~13_combout\,
	datad => VCC,
	cin => \inst33|Add0~5\,
	combout => \inst33|Add0~6_combout\,
	cout => \inst33|Add0~7\);

-- Location: LCCOMB_X20_Y10_N16
\inst33|opres[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[2]~7_combout\ = (\inst33|opres[2]~6_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~6_combout\)))) # (!\inst33|opres[2]~6_combout\ & (\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[2]~6_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~6_combout\,
	combout => \inst33|opres[2]~7_combout\);

-- Location: LCCOMB_X20_Y10_N24
\inst33|opres[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(2) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[2]~7_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[2]~7_combout\,
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(2),
	combout => \inst33|opres\(2));

-- Location: LCCOMB_X20_Y10_N4
\inst20|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux29~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(2),
	combout => \inst20|Mux29~0_combout\);

-- Location: FF_X20_Y10_N5
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

-- Location: FF_X20_Y11_N5
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

-- Location: LCCOMB_X23_Y11_N30
\inst202|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux29~0_combout\ = (\inst19|Equal0~1_combout\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a2\)) # (!\inst19|Equal0~1_combout\ & (((\inst700666|ACCB|valor_interno\(2) & \inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a2\,
	datab => \inst700666|ACCB|valor_interno\(2),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux29~0_combout\);

-- Location: FF_X23_Y11_N31
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

-- Location: LCCOMB_X20_Y10_N20
\muxSel2|$00000|auto_generated|result_node[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[2]~13_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux29~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(2))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(2),
	datac => \inst20|Mux29~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[2]~13_combout\);

-- Location: LCCOMB_X19_Y10_N22
\inst33|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~8_combout\ = ((\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ $ (\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ $ (!\inst33|Add0~7\)))) # (GND)
-- \inst33|Add0~9\ = CARRY((\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & ((\muxSel2|$00000|auto_generated|result_node[3]~12_combout\) # (!\inst33|Add0~7\))) # (!\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & 
-- (\muxSel2|$00000|auto_generated|result_node[3]~12_combout\ & !\inst33|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datad => VCC,
	cin => \inst33|Add0~7\,
	combout => \inst33|Add0~8_combout\,
	cout => \inst33|Add0~9\);

-- Location: LCCOMB_X20_Y10_N6
\inst33|opres[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~8_combout\ = (\inst16|selfalgs\(0) & (\inst16|selfalgs\(1))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & ((\inst33|Add0~8_combout\))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \inst16|selfalgs\(1),
	datac => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datad => \inst33|Add0~8_combout\,
	combout => \inst33|opres[3]~8_combout\);

-- Location: LCCOMB_X20_Y10_N12
\inst33|opres[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[3]~9_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & ((!\inst33|opres[3]~8_combout\) # (!\muxSel2|$00000|auto_generated|result_node[3]~12_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[3]~12_combout\ & (\muxSel2|$00000|auto_generated|result_node[3]~12_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[3]~12_combout\,
	datac => \inst33|opres[3]~8_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[3]~9_combout\);

-- Location: LCCOMB_X20_Y10_N18
\inst33|opres[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(3) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[3]~9_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[3]~9_combout\,
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(3),
	combout => \inst33|opres\(3));

-- Location: LCCOMB_X20_Y10_N22
\inst20|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux28~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(3),
	combout => \inst20|Mux28~0_combout\);

-- Location: FF_X20_Y10_N23
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

-- Location: FF_X20_Y10_N29
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

-- Location: LCCOMB_X20_Y10_N8
\inst202|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux12~0_combout\ = (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(3) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst700666|ACCA|valor_interno\(3),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux12~0_combout\);

-- Location: FF_X20_Y10_N9
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

-- Location: LCCOMB_X20_Y10_N30
\muxSel1|$00000|auto_generated|result_node[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[3]~12_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux28~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(3))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(3),
	datac => \inst20|Mux28~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[3]~12_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst33|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~10_combout\ = (\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & (\inst33|Add0~9\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & 
-- (!\inst33|Add0~9\)))) # (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & (!\inst33|Add0~9\)) # (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & ((\inst33|Add0~9\) # 
-- (GND)))))
-- \inst33|Add0~11\ = CARRY((\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\ & !\inst33|Add0~9\)) # (!\muxSel1|$00000|auto_generated|result_node[4]~11_combout\ & ((!\inst33|Add0~9\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[4]~11_combout\,
	datad => VCC,
	cin => \inst33|Add0~9\,
	combout => \inst33|Add0~10_combout\,
	cout => \inst33|Add0~11\);

-- Location: LCCOMB_X19_Y11_N20
\inst33|opres[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[4]~11_combout\ = (\inst33|opres[4]~10_combout\ & ((\inst16|selfalgs\(0)) # ((\inst33|Add0~10_combout\)))) # (!\inst33|opres[4]~10_combout\ & (!\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~10_combout\,
	datab => \inst16|selfalgs\(0),
	datac => \inst33|Add0~10_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	combout => \inst33|opres[4]~11_combout\);

-- Location: LCCOMB_X19_Y11_N24
\inst33|opres[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(4) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[4]~11_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[4]~11_combout\,
	datab => \inst33|opres\(4),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(4));

-- Location: LCCOMB_X19_Y11_N22
\inst20|Mux27~0\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y11_N23
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

-- Location: LCCOMB_X19_Y8_N12
\inst700666|ACCA|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(4),
	combout => \inst700666|ACCA|valor_interno[4]~feeder_combout\);

-- Location: FF_X19_Y8_N13
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

-- Location: LCCOMB_X18_Y11_N4
\inst202|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux11~0_combout\ = (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(4) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst700666|ACCA|valor_interno\(4),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux11~0_combout\);

-- Location: FF_X18_Y11_N5
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

-- Location: LCCOMB_X19_Y11_N30
\muxSel1|$00000|auto_generated|result_node[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[4]~11_combout\ = (\inst19|Equal2~6_combout\ & ((\inst12|Equal12~0_combout\ & ((\inst20|Mux27~0_combout\))) # (!\inst12|Equal12~0_combout\ & (\inst700|valor_interno\(4))))) # (!\inst19|Equal2~6_combout\ & 
-- (\inst700|valor_interno\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~6_combout\,
	datab => \inst700|valor_interno\(4),
	datac => \inst20|Mux27~0_combout\,
	datad => \inst12|Equal12~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[4]~11_combout\);

-- Location: LCCOMB_X19_Y10_N26
\inst33|Add0~12\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N10
\inst33|opres[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~12_combout\ = (\inst16|selfalgs\(1) & (((\inst33|Add0~12_combout\) # (\inst16|selfalgs\(0))))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \inst16|selfalgs\(1),
	datac => \inst33|Add0~12_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[5]~12_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst33|opres[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[5]~13_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & ((!\inst33|opres[5]~12_combout\) # (!\muxSel2|$00000|auto_generated|result_node[5]~10_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[5]~10_combout\ & (\muxSel2|$00000|auto_generated|result_node[5]~10_combout\)))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[5]~10_combout\,
	datac => \inst33|opres[5]~12_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[5]~13_combout\);

-- Location: LCCOMB_X19_Y10_N2
\inst33|opres[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(5) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[5]~13_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(5),
	datab => \inst33|opres[5]~13_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(5));

-- Location: LCCOMB_X18_Y11_N2
\inst20|Mux26~0\ : cycloneive_lcell_comb
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

-- Location: FF_X18_Y11_N3
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

-- Location: LCCOMB_X19_Y8_N10
\inst700666|ACCA|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCA|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(5),
	combout => \inst700666|ACCA|valor_interno[5]~feeder_combout\);

-- Location: FF_X19_Y8_N11
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
	ena => \inst12|Equal12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCA|valor_interno\(5));

-- Location: LCCOMB_X18_Y11_N26
\inst202|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux10~0_combout\ = (\inst19|Equal2~4_combout\ & (\inst700666|ACCA|valor_interno\(5) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~4_combout\,
	datab => \inst700666|ACCA|valor_interno\(5),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~5_combout\,
	combout => \inst202|Mux10~0_combout\);

-- Location: FF_X18_Y11_N27
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

-- Location: LCCOMB_X18_Y11_N28
\muxSel1|$00000|auto_generated|result_node[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[5]~10_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux26~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(5))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~0_combout\,
	datab => \inst700|valor_interno\(5),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux26~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[5]~10_combout\);

-- Location: LCCOMB_X19_Y10_N28
\inst33|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~14_combout\ = (\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (\inst33|Add0~13\ & VCC)) # (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & 
-- (!\inst33|Add0~13\)))) # (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & (!\inst33|Add0~13\)) # (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & ((\inst33|Add0~13\) # 
-- (GND)))))
-- \inst33|Add0~15\ = CARRY((\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\ & !\inst33|Add0~13\)) # (!\muxSel1|$00000|auto_generated|result_node[6]~9_combout\ & ((!\inst33|Add0~13\) # 
-- (!\muxSel2|$00000|auto_generated|result_node[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\,
	datab => \muxSel2|$00000|auto_generated|result_node[6]~9_combout\,
	datad => VCC,
	cin => \inst33|Add0~13\,
	combout => \inst33|Add0~14_combout\,
	cout => \inst33|Add0~15\);

-- Location: LCCOMB_X20_Y8_N8
\inst33|opres[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[6]~15_combout\ = (\inst33|opres[6]~14_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~14_combout\)))) # (!\inst33|opres[6]~14_combout\ & (\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[6]~14_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~14_combout\,
	combout => \inst33|opres[6]~15_combout\);

-- Location: LCCOMB_X20_Y8_N18
\inst33|opres[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(6) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[6]~15_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[6]~15_combout\,
	datab => \inst33|opres\(6),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(6));

-- Location: LCCOMB_X20_Y8_N14
\inst20|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux25~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(6),
	combout => \inst20|Mux25~0_combout\);

-- Location: FF_X20_Y8_N15
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

-- Location: LCCOMB_X19_Y8_N24
\inst700666|ACCA|valor_interno[6]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N25
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

-- Location: LCCOMB_X20_Y8_N12
\inst202|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux9~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst700666|ACCA|valor_interno\(6) & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst700666|ACCA|valor_interno\(6),
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux9~0_combout\);

-- Location: FF_X20_Y8_N13
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

-- Location: LCCOMB_X20_Y8_N10
\muxSel1|$00000|auto_generated|result_node[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[6]~9_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux25~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(6))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(6),
	datab => \inst20|Mux25~0_combout\,
	datac => \inst12|Equal12~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[6]~9_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst33|Add0~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N6
\inst33|opres[7]~16\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y10_N4
\inst33|opres[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[7]~17_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[7]~8_combout\) # (!\inst33|opres[7]~16_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[7]~8_combout\ & ((\muxSel2|$00000|auto_generated|result_node[7]~8_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(0),
	datab => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\,
	datac => \inst33|opres[7]~16_combout\,
	datad => \muxSel2|$00000|auto_generated|result_node[7]~8_combout\,
	combout => \inst33|opres[7]~17_combout\);

-- Location: LCCOMB_X19_Y10_N0
\inst33|opres[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(7) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[7]~17_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(7),
	datab => \inst33|opres[7]~17_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(7));

-- Location: LCCOMB_X20_Y7_N8
\inst20|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux24~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(7),
	combout => \inst20|Mux24~0_combout\);

-- Location: FF_X20_Y7_N9
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

-- Location: LCCOMB_X20_Y7_N20
\inst700666|ACCA|valor_interno[7]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X20_Y7_N21
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

-- Location: LCCOMB_X20_Y7_N26
\inst202|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux8~0_combout\ = (\inst700666|ACCA|valor_interno\(7) & (\inst19|Equal2~5_combout\ & (\inst19|Equal2~4_combout\ & \inst19|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCA|valor_interno\(7),
	datab => \inst19|Equal2~5_combout\,
	datac => \inst19|Equal2~4_combout\,
	datad => \inst19|Equal2~3_combout\,
	combout => \inst202|Mux8~0_combout\);

-- Location: FF_X20_Y7_N27
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

-- Location: LCCOMB_X20_Y7_N4
\muxSel1|$00000|auto_generated|result_node[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[7]~8_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux24~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(7))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(7),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst20|Mux24~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst33|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~18_combout\ = (\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & (\inst33|Add0~17\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & 
-- (!\inst33|Add0~17\)))) # (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & (!\inst33|Add0~17\)) # (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & ((\inst33|Add0~17\) # 
-- (GND)))))
-- \inst33|Add0~19\ = CARRY((\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\ & !\inst33|Add0~17\)) # (!\muxSel2|$00000|auto_generated|result_node[8]~7_combout\ & ((!\inst33|Add0~17\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[8]~7_combout\,
	datad => VCC,
	cin => \inst33|Add0~17\,
	combout => \inst33|Add0~18_combout\,
	cout => \inst33|Add0~19\);

-- Location: LCCOMB_X19_Y11_N10
\inst33|opres[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[8]~19_combout\ = (\inst16|selfalgs\(0) & (((\inst33|opres[8]~18_combout\)))) # (!\inst16|selfalgs\(0) & ((\inst33|opres[8]~18_combout\ & ((\inst33|Add0~18_combout\))) # (!\inst33|opres[8]~18_combout\ & 
-- (\muxSel1|$00000|auto_generated|result_node[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst16|selfalgs\(0),
	datac => \inst33|opres[8]~18_combout\,
	datad => \inst33|Add0~18_combout\,
	combout => \inst33|opres[8]~19_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst33|opres[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(8) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[8]~19_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[8]~19_combout\,
	datac => \inst33|opres\(8),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(8));

-- Location: LCCOMB_X19_Y11_N0
\inst20|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux23~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(8),
	combout => \inst20|Mux23~0_combout\);

-- Location: FF_X19_Y11_N1
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

-- Location: LCCOMB_X21_Y7_N24
\inst700666|ACCB|valor_interno[8]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y7_N25
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

-- Location: LCCOMB_X17_Y11_N28
\inst202|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux23~0_combout\ = (\inst1|mem~0_q\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a8\ & \inst19|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem~0_q\,
	datac => \inst1|mem_rtl_0|auto_generated|ram_block1a8\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux23~0_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst202|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux23~1_combout\ = (\inst19|Equal0~1_combout\ & (((\inst202|Mux23~0_combout\)))) # (!\inst19|Equal0~1_combout\ & (\inst19|Equal2~6_combout\ & ((\inst700666|ACCB|valor_interno\(8)) # (\inst202|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(8),
	datab => \inst19|Equal0~1_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst202|Mux23~0_combout\,
	combout => \inst202|Mux23~1_combout\);

-- Location: FF_X17_Y11_N3
\inst14|valor_interno[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	d => \inst202|Mux23~1_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|valor_interno\(8));

-- Location: LCCOMB_X17_Y11_N24
\muxSel2|$00000|auto_generated|result_node[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[8]~7_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux23~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(8))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(8),
	datac => \inst20|Mux23~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[8]~7_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst33|Add0~20\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y9_N22
\inst33|opres[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~20_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~20_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~20_combout\,
	combout => \inst33|opres[9]~20_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst33|opres[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[9]~21_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[9]~6_combout\) # (!\inst33|opres[9]~20_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[9]~6_combout\ & ((\muxSel2|$00000|auto_generated|result_node[9]~6_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\,
	datab => \inst33|opres[9]~20_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel2|$00000|auto_generated|result_node[9]~6_combout\,
	combout => \inst33|opres[9]~21_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst33|opres[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(9) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[9]~21_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[9]~21_combout\,
	datac => \inst33|opres\(9),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(9));

-- Location: LCCOMB_X20_Y9_N28
\inst20|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux22~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selc~q\,
	datad => \inst33|opres\(9),
	combout => \inst20|Mux22~0_combout\);

-- Location: FF_X20_Y9_N29
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

-- Location: LCCOMB_X21_Y9_N12
\inst700666|ACCA|valor_interno[9]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y9_N13
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

-- Location: LCCOMB_X21_Y9_N20
\inst202|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux6~0_combout\ = (\inst19|Equal2~5_combout\ & (\inst700666|ACCA|valor_interno\(9) & (\inst19|Equal2~3_combout\ & \inst19|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|Equal2~5_combout\,
	datab => \inst700666|ACCA|valor_interno\(9),
	datac => \inst19|Equal2~3_combout\,
	datad => \inst19|Equal2~4_combout\,
	combout => \inst202|Mux6~0_combout\);

-- Location: FF_X21_Y9_N21
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

-- Location: LCCOMB_X20_Y9_N30
\muxSel1|$00000|auto_generated|result_node[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel1|$00000|auto_generated|result_node[9]~6_combout\ = (\inst12|Equal12~0_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux22~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst700|valor_interno\(9))))) # (!\inst12|Equal12~0_combout\ & 
-- (\inst700|valor_interno\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700|valor_interno\(9),
	datab => \inst12|Equal12~0_combout\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux22~0_combout\,
	combout => \muxSel1|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst33|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~22_combout\ = (\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (\inst33|Add0~21\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & 
-- (!\inst33|Add0~21\)))) # (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & (!\inst33|Add0~21\)) # (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst33|Add0~21\) # 
-- (GND)))))
-- \inst33|Add0~23\ = CARRY((\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\ & !\inst33|Add0~21\)) # (!\muxSel2|$00000|auto_generated|result_node[10]~5_combout\ & ((!\inst33|Add0~21\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[10]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[10]~5_combout\,
	datad => VCC,
	cin => \inst33|Add0~21\,
	combout => \inst33|Add0~22_combout\,
	cout => \inst33|Add0~23\);

-- Location: LCCOMB_X20_Y9_N22
\inst33|opres[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[10]~23_combout\ = (\inst33|opres[10]~22_combout\ & (((\inst33|Add0~22_combout\) # (\inst16|selfalgs\(0))))) # (!\inst33|opres[10]~22_combout\ & (\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((!\inst16|selfalgs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst33|opres[10]~22_combout\,
	datac => \inst33|Add0~22_combout\,
	datad => \inst16|selfalgs\(0),
	combout => \inst33|opres[10]~23_combout\);

-- Location: LCCOMB_X20_Y9_N2
\inst33|opres[10]\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X20_Y9_N26
\inst20|Mux21~0\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X21_Y8_N30
\inst700666|ACCB|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|ACCB|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|ACCB|valor_interno[10]~feeder_combout\);

-- Location: FF_X21_Y8_N31
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(10));

-- Location: LCCOMB_X23_Y11_N6
\inst202|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux21~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a10\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(10) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(10),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a10\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux21~0_combout\);

-- Location: FF_X23_Y11_N7
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

-- Location: LCCOMB_X20_Y9_N4
\muxSel2|$00000|auto_generated|result_node[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[10]~5_combout\ = (\inst19|Equal2~6_combout\ & ((\inst12|Equal12~1_combout\ & (\inst20|Mux21~0_combout\)) # (!\inst12|Equal12~1_combout\ & ((\inst14|valor_interno\(10)))))) # (!\inst19|Equal2~6_combout\ & 
-- (((\inst14|valor_interno\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mux21~0_combout\,
	datab => \inst14|valor_interno\(10),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst12|Equal12~1_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst33|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~24_combout\ = ((\muxSel2|$00000|auto_generated|result_node[11]~4_combout\ $ (\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ $ (!\inst33|Add0~23\)))) # (GND)
-- \inst33|Add0~25\ = CARRY((\muxSel2|$00000|auto_generated|result_node[11]~4_combout\ & ((\muxSel1|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst33|Add0~23\))) # (!\muxSel2|$00000|auto_generated|result_node[11]~4_combout\ & 
-- (\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & !\inst33|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datad => VCC,
	cin => \inst33|Add0~23\,
	combout => \inst33|Add0~24_combout\,
	cout => \inst33|Add0~25\);

-- Location: LCCOMB_X19_Y9_N18
\inst33|opres[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~24_combout\ = (\inst16|selfalgs\(1) & (((\inst16|selfalgs\(0)) # (\inst33|Add0~24_combout\)))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~24_combout\,
	combout => \inst33|opres[11]~24_combout\);

-- Location: LCCOMB_X20_Y9_N24
\inst33|opres[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[11]~25_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[11]~4_combout\) # (!\inst33|opres[11]~24_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[11]~4_combout\ & ((\muxSel2|$00000|auto_generated|result_node[11]~4_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[11]~4_combout\,
	datab => \inst33|opres[11]~24_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\,
	combout => \inst33|opres[11]~25_combout\);

-- Location: LCCOMB_X20_Y9_N12
\inst33|opres[11]\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X20_Y9_N8
\inst20|Mux20~0\ : cycloneive_lcell_comb
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

-- Location: FF_X20_Y9_N9
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

-- Location: LCCOMB_X21_Y8_N16
\inst700666|ACCB|valor_interno[11]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y8_N17
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(11));

-- Location: LCCOMB_X23_Y11_N12
\inst202|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux20~0_combout\ = (\inst19|Equal0~1_combout\ & (\inst1|mem_rtl_0|auto_generated|ram_block1a11\)) # (!\inst19|Equal0~1_combout\ & (((\inst700666|ACCB|valor_interno\(11) & \inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mem_rtl_0|auto_generated|ram_block1a11\,
	datab => \inst700666|ACCB|valor_interno\(11),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux20~0_combout\);

-- Location: FF_X23_Y11_N13
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

-- Location: LCCOMB_X20_Y9_N20
\muxSel2|$00000|auto_generated|result_node[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[11]~4_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux20~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(11))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(11),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux20~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[11]~4_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst33|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~26_combout\ = (\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (\inst33|Add0~25\ & VCC)) # (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!\inst33|Add0~25\)))) # (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & (!\inst33|Add0~25\)) # (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & ((\inst33|Add0~25\) # 
-- (GND)))))
-- \inst33|Add0~27\ = CARRY((\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\ & !\inst33|Add0~25\)) # (!\muxSel2|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst33|Add0~25\) # 
-- (!\muxSel1|$00000|auto_generated|result_node[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[12]~3_combout\,
	datad => VCC,
	cin => \inst33|Add0~25\,
	combout => \inst33|Add0~26_combout\,
	cout => \inst33|Add0~27\);

-- Location: LCCOMB_X18_Y9_N14
\inst33|opres[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[12]~27_combout\ = (\inst33|opres[12]~26_combout\ & ((\inst16|selfalgs\(0)) # ((\inst33|Add0~26_combout\)))) # (!\inst33|opres[12]~26_combout\ & (!\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[12]~26_combout\,
	datab => \inst16|selfalgs\(0),
	datac => \inst33|Add0~26_combout\,
	datad => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst33|opres[12]~27_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst33|opres[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(12) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[12]~27_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[12]~27_combout\,
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	datad => \inst33|opres\(12),
	combout => \inst33|opres\(12));

-- Location: LCCOMB_X20_Y11_N10
\inst20|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux19~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datad => \inst33|opres\(12),
	combout => \inst20|Mux19~0_combout\);

-- Location: FF_X20_Y11_N11
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

-- Location: FF_X19_Y10_N1
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

-- Location: LCCOMB_X23_Y11_N14
\inst202|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux19~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a12\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(12) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(12),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a12\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux19~0_combout\);

-- Location: FF_X23_Y11_N15
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

-- Location: LCCOMB_X20_Y9_N6
\muxSel2|$00000|auto_generated|result_node[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[12]~3_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux19~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(12))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Equal12~1_combout\,
	datab => \inst14|valor_interno\(12),
	datac => \inst19|Equal2~6_combout\,
	datad => \inst20|Mux19~0_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst33|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|Add0~28_combout\ = ((\muxSel2|$00000|auto_generated|result_node[13]~2_combout\ $ (\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ $ (!\inst33|Add0~27\)))) # (GND)
-- \inst33|Add0~29\ = CARRY((\muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & ((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst33|Add0~27\))) # (!\muxSel2|$00000|auto_generated|result_node[13]~2_combout\ & 
-- (\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & !\inst33|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datad => VCC,
	cin => \inst33|Add0~27\,
	combout => \inst33|Add0~28_combout\,
	cout => \inst33|Add0~29\);

-- Location: LCCOMB_X19_Y9_N24
\inst33|opres[13]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~28_combout\ = (\inst16|selfalgs\(0) & (((\inst16|selfalgs\(1))))) # (!\inst16|selfalgs\(0) & ((\inst16|selfalgs\(1) & ((\inst33|Add0~28_combout\))) # (!\inst16|selfalgs\(1) & (\muxSel1|$00000|auto_generated|result_node[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[14]~1_combout\,
	datab => \inst16|selfalgs\(0),
	datac => \inst16|selfalgs\(1),
	datad => \inst33|Add0~28_combout\,
	combout => \inst33|opres[13]~28_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst33|opres[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[13]~29_combout\ = (\inst16|selfalgs\(0) & ((\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & ((!\muxSel2|$00000|auto_generated|result_node[13]~2_combout\) # (!\inst33|opres[13]~28_combout\))) # 
-- (!\muxSel1|$00000|auto_generated|result_node[13]~2_combout\ & ((\muxSel2|$00000|auto_generated|result_node[13]~2_combout\))))) # (!\inst16|selfalgs\(0) & (((\inst33|opres[13]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[13]~2_combout\,
	datab => \inst33|opres[13]~28_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\,
	combout => \inst33|opres[13]~29_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst33|opres[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(13) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[13]~29_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|opres[13]~29_combout\,
	datac => \inst33|opres\(13),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(13));

-- Location: LCCOMB_X20_Y8_N4
\inst20|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux18~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datac => \inst33|opres\(13),
	combout => \inst20|Mux18~0_combout\);

-- Location: FF_X20_Y8_N5
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

-- Location: FF_X20_Y8_N19
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

-- Location: LCCOMB_X23_Y11_N8
\inst202|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux18~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a13\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(13) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(13),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a13\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux18~0_combout\);

-- Location: FF_X23_Y11_N9
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

-- Location: LCCOMB_X20_Y8_N26
\muxSel2|$00000|auto_generated|result_node[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[13]~2_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux18~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(13))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(13),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst20|Mux18~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[13]~2_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst33|Add0~30\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y11_N18
\inst33|opres[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[14]~31_combout\ = (\inst33|opres[14]~30_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~30_combout\)))) # (!\inst33|opres[14]~30_combout\ & (\muxSel1|$00000|auto_generated|result_node[15]~0_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \muxSel1|$00000|auto_generated|result_node[15]~0_combout\,
	datab => \inst33|opres[14]~30_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~30_combout\,
	combout => \inst33|opres[14]~31_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst33|opres[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(14) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[14]~31_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[14]~31_combout\,
	datab => \inst33|opres\(14),
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(14));

-- Location: LCCOMB_X19_Y11_N16
\inst20|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|Mux17~0_combout\ = (\inst16|selc~q\ & \inst33|opres\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|selc~q\,
	datad => \inst33|opres\(14),
	combout => \inst20|Mux17~0_combout\);

-- Location: FF_X19_Y11_N17
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

-- Location: LCCOMB_X19_Y7_N12
\inst700666|ACCB|valor_interno[14]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y7_N13
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
	ena => \inst12|Equal12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|ACCB|valor_interno\(14));

-- Location: LCCOMB_X23_Y11_N26
\inst202|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst202|Mux17~0_combout\ = (\inst19|Equal0~1_combout\ & (((\inst1|mem_rtl_0|auto_generated|ram_block1a14\)))) # (!\inst19|Equal0~1_combout\ & (\inst700666|ACCB|valor_interno\(14) & ((\inst19|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst700666|ACCB|valor_interno\(14),
	datab => \inst1|mem_rtl_0|auto_generated|ram_block1a14\,
	datac => \inst19|Equal2~6_combout\,
	datad => \inst19|Equal0~1_combout\,
	combout => \inst202|Mux17~0_combout\);

-- Location: FF_X23_Y11_N27
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

-- Location: LCCOMB_X18_Y11_N8
\muxSel2|$00000|auto_generated|result_node[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxSel2|$00000|auto_generated|result_node[14]~1_combout\ = (\inst12|Equal12~1_combout\ & ((\inst19|Equal2~6_combout\ & ((\inst20|Mux17~0_combout\))) # (!\inst19|Equal2~6_combout\ & (\inst14|valor_interno\(14))))) # (!\inst12|Equal12~1_combout\ & 
-- (\inst14|valor_interno\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|valor_interno\(14),
	datab => \inst12|Equal12~1_combout\,
	datac => \inst20|Mux17~0_combout\,
	datad => \inst19|Equal2~6_combout\,
	combout => \muxSel2|$00000|auto_generated|result_node[14]~1_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst33|Add0~32\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X19_Y9_N16
\inst33|Add0~34\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X18_Y9_N20
\inst33|opres[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[16]~34_combout\ = (\inst16|selfalgs\(1) & (!\inst16|selfalgs\(0) & \inst33|Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~34_combout\,
	combout => \inst33|opres[16]~34_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst33|opres[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(16) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres[16]~34_combout\)) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[16]~34_combout\,
	datab => \inst33|opres\(16),
	datac => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(16));

-- Location: FF_X19_Y10_N3
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

-- Location: LCCOMB_X20_Y7_N0
\inst33|opres[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~1_combout\ = (!\inst16|selc~q\ & \inst|ci~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selc~q\,
	datac => \inst|ci~q\,
	combout => \inst33|opres[15]~1_combout\);

-- Location: LCCOMB_X20_Y7_N12
\inst33|opres[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres[15]~3_combout\ = (\inst33|opres[15]~2_combout\ & (((\inst16|selfalgs\(0)) # (\inst33|Add0~32_combout\)))) # (!\inst33|opres[15]~2_combout\ & (\inst33|opres[15]~1_combout\ & (!\inst16|selfalgs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres[15]~2_combout\,
	datab => \inst33|opres[15]~1_combout\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|Add0~32_combout\,
	combout => \inst33|opres[15]~3_combout\);

-- Location: LCCOMB_X20_Y7_N10
\inst33|opres[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|opres\(15) = (GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & ((\inst33|opres[15]~3_combout\))) # (!GLOBAL(\inst33|opres[16]~0clkctrl_outclk\) & (\inst33|opres\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(15),
	datac => \inst33|opres[15]~3_combout\,
	datad => \inst33|opres[16]~0clkctrl_outclk\,
	combout => \inst33|opres\(15));

-- Location: FF_X19_Y11_N9
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

-- Location: FF_X19_Y11_N25
\inst101|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|ni~q\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst101|valor_interno~q\);

-- Location: LCCOMB_X19_Y11_N26
\inst33|WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~2_combout\ = (\inst33|opres\(9)) # ((\inst33|opres\(12)) # ((\inst33|opres\(11)) # (\inst33|opres\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(9),
	datab => \inst33|opres\(12),
	datac => \inst33|opres\(11),
	datad => \inst33|opres\(10),
	combout => \inst33|WideOr0~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst33|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~1_combout\ = (\inst33|opres\(7)) # ((\inst33|opres\(8)) # ((\inst33|opres\(5)) # (\inst33|opres\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(7),
	datab => \inst33|opres\(8),
	datac => \inst33|opres\(5),
	datad => \inst33|opres\(6),
	combout => \inst33|WideOr0~1_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst33|WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~3_combout\ = (\inst33|opres\(0)) # ((\inst33|opres\(14)) # ((\inst33|opres\(15)) # (\inst33|opres\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(0),
	datab => \inst33|opres\(14),
	datac => \inst33|opres\(15),
	datad => \inst33|opres\(13),
	combout => \inst33|WideOr0~3_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst33|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~0_combout\ = (\inst33|opres\(1)) # ((\inst33|opres\(4)) # ((\inst33|opres\(2)) # (\inst33|opres\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|opres\(1),
	datab => \inst33|opres\(4),
	datac => \inst33|opres\(2),
	datad => \inst33|opres\(3),
	combout => \inst33|WideOr0~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst33|WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|WideOr0~4_combout\ = (!\inst33|WideOr0~2_combout\ & (!\inst33|WideOr0~1_combout\ & (!\inst33|WideOr0~3_combout\ & !\inst33|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|WideOr0~2_combout\,
	datab => \inst33|WideOr0~1_combout\,
	datac => \inst33|WideOr0~3_combout\,
	datad => \inst33|WideOr0~0_combout\,
	combout => \inst33|WideOr0~4_combout\);

-- Location: FF_X19_Y11_N15
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

-- Location: FF_X19_Y11_N13
\inst102|valor_interno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RELOJ~inputclkctrl_outclk\,
	asdata => \inst|zi~q\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst102|valor_interno~q\);

-- Location: LCCOMB_X18_Y9_N18
\inst|vi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~0_combout\ = (\inst16|selfalgs\(1) & \inst33|opres\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|selfalgs\(1),
	datad => \inst33|opres\(16),
	combout => \inst|vi~0_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst|vi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|vi~feeder_combout\ = \inst|vi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vi~0_combout\,
	combout => \inst|vi~feeder_combout\);

-- Location: FF_X18_Y9_N29
\inst|vi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst|vi~feeder_combout\,
	ena => \inst33|opres[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vi~q\);

-- Location: LCCOMB_X17_Y9_N16
\inst103|valor_interno~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X17_Y9_N17
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

-- Location: FF_X20_Y7_N1
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

-- Location: LCCOMB_X17_Y11_N10
\inst|hi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|hi~0_combout\ = (\inst16|selfalgs\(1) & ((\inst16|selfalgs\(0) & (\inst|hi~q\)) # (!\inst16|selfalgs\(0) & ((\inst33|opres\(8)))))) # (!\inst16|selfalgs\(1) & (\inst|hi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|selfalgs\(1),
	datab => \inst|hi~q\,
	datac => \inst16|selfalgs\(0),
	datad => \inst33|opres\(8),
	combout => \inst|hi~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|hi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|hi~feeder_combout\ = \inst|hi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|hi~0_combout\,
	combout => \inst|hi~feeder_combout\);

-- Location: FF_X17_Y11_N5
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

-- Location: LCCOMB_X16_Y11_N12
\inst105|valor_interno~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X16_Y11_N13
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

-- Location: LCCOMB_X21_Y7_N18
\inst700666|AUX|valor_interno[15]~feeder\ : cycloneive_lcell_comb
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

-- Location: LCCOMB_X20_Y8_N30
\inst12|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Equal12~2_combout\ = (\inst107|selregw\(2) & \inst107|selregw\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst107|selregw\(2),
	datad => \inst107|selregw\(0),
	combout => \inst12|Equal12~2_combout\);

-- Location: FF_X21_Y7_N19
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(15));

-- Location: LCCOMB_X19_Y7_N26
\inst700666|AUX|valor_interno[14]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y7_N27
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(14));

-- Location: LCCOMB_X19_Y7_N8
\inst700666|AUX|valor_interno[13]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y7_N9
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(13));

-- Location: LCCOMB_X19_Y8_N2
\inst700666|AUX|valor_interno[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[12]~feeder_combout\ = \inst24|valor_interno\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(12),
	combout => \inst700666|AUX|valor_interno[12]~feeder_combout\);

-- Location: FF_X19_Y8_N3
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(12));

-- Location: LCCOMB_X21_Y8_N12
\inst700666|AUX|valor_interno[11]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y8_N13
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(11));

-- Location: LCCOMB_X21_Y8_N18
\inst700666|AUX|valor_interno[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[10]~feeder_combout\ = \inst24|valor_interno\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(10),
	combout => \inst700666|AUX|valor_interno[10]~feeder_combout\);

-- Location: FF_X21_Y8_N19
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(10));

-- Location: LCCOMB_X21_Y7_N28
\inst700666|AUX|valor_interno[9]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y7_N29
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

-- Location: LCCOMB_X21_Y7_N30
\inst700666|AUX|valor_interno[8]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y7_N31
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

-- Location: LCCOMB_X19_Y7_N30
\inst700666|AUX|valor_interno[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[7]~feeder_combout\ = \inst24|valor_interno\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(7),
	combout => \inst700666|AUX|valor_interno[7]~feeder_combout\);

-- Location: FF_X19_Y7_N31
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

-- Location: LCCOMB_X19_Y8_N0
\inst700666|AUX|valor_interno[6]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N1
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

-- Location: LCCOMB_X19_Y8_N30
\inst700666|AUX|valor_interno[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[5]~feeder_combout\ = \inst24|valor_interno\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(5),
	combout => \inst700666|AUX|valor_interno[5]~feeder_combout\);

-- Location: FF_X19_Y8_N31
\inst700666|AUX|valor_interno[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RELOJ~inputclkctrl_outclk\,
	d => \inst700666|AUX|valor_interno[5]~feeder_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(5));

-- Location: LCCOMB_X19_Y8_N28
\inst700666|AUX|valor_interno[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[4]~feeder_combout\ = \inst24|valor_interno\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(4),
	combout => \inst700666|AUX|valor_interno[4]~feeder_combout\);

-- Location: FF_X19_Y8_N29
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

-- Location: LCCOMB_X19_Y7_N28
\inst700666|AUX|valor_interno[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst700666|AUX|valor_interno[3]~feeder_combout\ = \inst24|valor_interno\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|valor_interno\(3),
	combout => \inst700666|AUX|valor_interno[3]~feeder_combout\);

-- Location: FF_X19_Y7_N29
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

-- Location: LCCOMB_X21_Y7_N0
\inst700666|AUX|valor_interno[2]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X21_Y7_N1
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
	ena => \inst12|Equal12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst700666|AUX|valor_interno\(2));

-- Location: LCCOMB_X19_Y8_N18
\inst700666|AUX|valor_interno[1]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N19
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

-- Location: LCCOMB_X19_Y8_N4
\inst700666|AUX|valor_interno[0]~feeder\ : cycloneive_lcell_comb
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

-- Location: FF_X19_Y8_N5
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


