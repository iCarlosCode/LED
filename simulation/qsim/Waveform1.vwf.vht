-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/20/2023 11:29:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LED
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LED_vhd_vec_tst IS
END LED_vhd_vec_tst;
ARCHITECTURE LED_arch OF LED_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bot : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL Led : STD_LOGIC;
COMPONENT LED
	PORT (
	bot : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	Led : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LED
	PORT MAP (
-- list connections between master ports and signals
	bot => bot,
	Clk => Clk,
	Led => Led
	);

-- bot
t_prcs_bot: PROCESS
BEGIN
	bot <= '1';
	WAIT FOR 300000 ps;
	bot <= '0';
	WAIT FOR 280000 ps;
	bot <= '1';
WAIT;
END PROCESS t_prcs_bot;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 25000 ps;
	Clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;
END LED_arch;
