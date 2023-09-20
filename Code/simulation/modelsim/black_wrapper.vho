-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "08/12/2021 21:20:53"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	black_wrapper IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END black_wrapper;

-- Design Ports Information
-- HEX[0]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[3]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[5]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX[7]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF black_wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX : std_logic_vector(7 DOWNTO 0);
SIGNAL \HEX[0]~output_o\ : std_logic;
SIGNAL \HEX[1]~output_o\ : std_logic;
SIGNAL \HEX[2]~output_o\ : std_logic;
SIGNAL \HEX[3]~output_o\ : std_logic;
SIGNAL \HEX[4]~output_o\ : std_logic;
SIGNAL \HEX[5]~output_o\ : std_logic;
SIGNAL \HEX[6]~output_o\ : std_logic;
SIGNAL \HEX[7]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \b|Selector8~0_combout\ : std_logic;
SIGNAL \b|state.S3~q\ : std_logic;
SIGNAL \b|Selector8~1_combout\ : std_logic;
SIGNAL \b|Selector13~1_combout\ : std_logic;
SIGNAL \b|nextstate.S5~q\ : std_logic;
SIGNAL \b|state.S5~q\ : std_logic;
SIGNAL \b|Selector13~0_combout\ : std_logic;
SIGNAL \b|Selector8~2_combout\ : std_logic;
SIGNAL \b|nextstate.S0~q\ : std_logic;
SIGNAL \b|state.S0~q\ : std_logic;
SIGNAL \b|Selector9~1_combout\ : std_logic;
SIGNAL \b|Selector9~0_combout\ : std_logic;
SIGNAL \b|Selector9~2_combout\ : std_logic;
SIGNAL \b|nextstate.S1~q\ : std_logic;
SIGNAL \b|state.S1~q\ : std_logic;
SIGNAL \b|Selector10~0_combout\ : std_logic;
SIGNAL \b|Selector10~1_combout\ : std_logic;
SIGNAL \b|nextstate.S2~q\ : std_logic;
SIGNAL \b|state.S2~feeder_combout\ : std_logic;
SIGNAL \b|state.S2~q\ : std_logic;
SIGNAL \b|nextstate.S3~1_combout\ : std_logic;
SIGNAL \b|nextstate.S3~0_combout\ : std_logic;
SIGNAL \b|nextstate.S3~2_combout\ : std_logic;
SIGNAL \b|nextstate.S3~q\ : std_logic;
SIGNAL \b|enable1~1_combout\ : std_logic;
SIGNAL \b|enable1~q\ : std_logic;
SIGNAL \b|gendlcd1|counter[3]~7_combout\ : std_logic;
SIGNAL \b|gendlcd1|counter~9_combout\ : std_logic;
SIGNAL \b|gendlcd1|Add0~0_combout\ : std_logic;
SIGNAL \b|gendlcd1|counter~11_combout\ : std_logic;
SIGNAL \b|gendlcd1|counter~10_combout\ : std_logic;
SIGNAL \b|gendlcd1|counter~8_combout\ : std_logic;
SIGNAL \b|gendlcd1|counter~6_combout\ : std_logic;
SIGNAL \b|genplcd1|num~0_combout\ : std_logic;
SIGNAL \b|enable2~1_combout\ : std_logic;
SIGNAL \b|enable2~q\ : std_logic;
SIGNAL \b|gendlcd1|num~0_combout\ : std_logic;
SIGNAL \b|genplcd1|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b|gendlcd1|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b|gendlcd1|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX <= ww_HEX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;

-- Location: IOOBUF_X9_Y73_N2
\HEX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\HEX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\HEX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[3]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX[4]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\HEX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|genplcd1|num\(0),
	devoe => ww_devoe,
	o => \HEX[5]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\HEX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|gendlcd1|num\(0),
	devoe => ww_devoe,
	o => \HEX[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\HEX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|gendlcd1|num\(0),
	devoe => ww_devoe,
	o => \HEX[7]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y47_N6
\b|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector8~0_combout\ = (\b|state.S2~q\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \b|state.S2~q\,
	combout => \b|Selector8~0_combout\);

-- Location: FF_X114_Y47_N31
\b|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	asdata => \b|nextstate.S3~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|state.S3~q\);

-- Location: LCCOMB_X114_Y47_N28
\b|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector8~1_combout\ = (\SW[1]~input_o\ & (((\b|state.S1~q\ & !\KEY[0]~input_o\)) # (!\b|state.S0~q\))) # (!\SW[1]~input_o\ & (\b|state.S1~q\ & ((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|state.S1~q\,
	datac => \b|state.S0~q\,
	datad => \KEY[0]~input_o\,
	combout => \b|Selector8~1_combout\);

-- Location: LCCOMB_X114_Y47_N10
\b|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector13~1_combout\ = (\b|nextstate.S5~q\ & ((\b|Selector8~0_combout\) # (\b|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Selector8~0_combout\,
	datac => \b|nextstate.S5~q\,
	datad => \b|Selector13~0_combout\,
	combout => \b|Selector13~1_combout\);

-- Location: FF_X114_Y47_N11
\b|nextstate.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|nextstate.S5~q\);

-- Location: FF_X114_Y47_N23
\b|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	asdata => \b|nextstate.S5~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|state.S5~q\);

-- Location: LCCOMB_X114_Y47_N4
\b|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector13~0_combout\ = (!\KEY[0]~input_o\ & ((\b|state.S3~q\) # (\b|state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \b|state.S3~q\,
	datad => \b|state.S5~q\,
	combout => \b|Selector13~0_combout\);

-- Location: LCCOMB_X114_Y47_N14
\b|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector8~2_combout\ = (!\b|Selector8~1_combout\ & ((\b|nextstate.S0~q\) # ((!\b|Selector8~0_combout\ & !\b|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Selector8~0_combout\,
	datab => \b|Selector8~1_combout\,
	datac => \b|nextstate.S0~q\,
	datad => \b|Selector13~0_combout\,
	combout => \b|Selector8~2_combout\);

-- Location: FF_X114_Y47_N15
\b|nextstate.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|nextstate.S0~q\);

-- Location: FF_X114_Y47_N17
\b|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	asdata => \b|nextstate.S0~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|state.S0~q\);

-- Location: LCCOMB_X114_Y47_N30
\b|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector9~1_combout\ = (!\KEY[0]~input_o\ & (\b|state.S3~q\ & \b|nextstate.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \b|state.S3~q\,
	datad => \b|nextstate.S1~q\,
	combout => \b|Selector9~1_combout\);

-- Location: LCCOMB_X114_Y47_N12
\b|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector9~0_combout\ = (\b|nextstate.S1~q\ & ((\b|state.S5~q\) # ((\b|Selector8~0_combout\)))) # (!\b|nextstate.S1~q\ & (\b|state.S5~q\ & (\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|nextstate.S1~q\,
	datab => \b|state.S5~q\,
	datac => \KEY[0]~input_o\,
	datad => \b|Selector8~0_combout\,
	combout => \b|Selector9~0_combout\);

-- Location: LCCOMB_X114_Y47_N26
\b|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector9~2_combout\ = (\b|Selector9~1_combout\) # ((\b|Selector9~0_combout\) # ((!\b|state.S0~q\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|state.S0~q\,
	datab => \SW[1]~input_o\,
	datac => \b|Selector9~1_combout\,
	datad => \b|Selector9~0_combout\,
	combout => \b|Selector9~2_combout\);

-- Location: FF_X114_Y47_N27
\b|nextstate.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|Selector9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|nextstate.S1~q\);

-- Location: FF_X114_Y47_N5
\b|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	asdata => \b|nextstate.S1~q\,
	clrn => \ALT_INV_SW[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|state.S1~q\);

-- Location: LCCOMB_X114_Y47_N0
\b|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector10~0_combout\ = (\b|state.S3~q\) # ((\KEY[0]~input_o\ & (\b|state.S1~q\)) # (!\KEY[0]~input_o\ & ((\b|state.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \b|state.S3~q\,
	datac => \b|state.S1~q\,
	datad => \b|state.S5~q\,
	combout => \b|Selector10~0_combout\);

-- Location: LCCOMB_X114_Y47_N8
\b|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|Selector10~1_combout\ = (\b|nextstate.S2~q\ & ((\b|Selector8~0_combout\) # ((\b|Selector10~0_combout\)))) # (!\b|nextstate.S2~q\ & (((\KEY[0]~input_o\ & \b|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|Selector8~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \b|nextstate.S2~q\,
	datad => \b|Selector10~0_combout\,
	combout => \b|Selector10~1_combout\);

-- Location: FF_X114_Y47_N9
\b|nextstate.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|nextstate.S2~q\);

-- Location: LCCOMB_X114_Y47_N20
\b|state.S2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|state.S2~feeder_combout\ = \b|nextstate.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b|nextstate.S2~q\,
	combout => \b|state.S2~feeder_combout\);

-- Location: FF_X114_Y47_N21
\b|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|state.S2~feeder_combout\,
	clrn => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|state.S2~q\);

-- Location: LCCOMB_X114_Y47_N22
\b|nextstate.S3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|nextstate.S3~1_combout\ = (\KEY[0]~input_o\ & ((\KEY[1]~input_o\) # (!\b|state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datad => \b|state.S2~q\,
	combout => \b|nextstate.S3~1_combout\);

-- Location: LCCOMB_X114_Y47_N16
\b|nextstate.S3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|nextstate.S3~0_combout\ = (!\b|state.S1~q\ & \b|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b|state.S1~q\,
	datac => \b|state.S0~q\,
	combout => \b|nextstate.S3~0_combout\);

-- Location: LCCOMB_X114_Y47_N2
\b|nextstate.S3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|nextstate.S3~2_combout\ = (\b|nextstate.S3~1_combout\ & (\b|state.S2~q\ & ((\b|nextstate.S3~q\) # (\b|nextstate.S3~0_combout\)))) # (!\b|nextstate.S3~1_combout\ & (((\b|nextstate.S3~q\ & \b|nextstate.S3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|nextstate.S3~1_combout\,
	datab => \b|state.S2~q\,
	datac => \b|nextstate.S3~q\,
	datad => \b|nextstate.S3~0_combout\,
	combout => \b|nextstate.S3~2_combout\);

-- Location: FF_X114_Y47_N3
\b|nextstate.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|nextstate.S3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|nextstate.S3~q\);

-- Location: LCCOMB_X114_Y47_N24
\b|enable1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|enable1~1_combout\ = \b|nextstate.S3~q\ $ (\b|nextstate.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b|nextstate.S3~q\,
	datad => \b|nextstate.S1~q\,
	combout => \b|enable1~1_combout\);

-- Location: FF_X114_Y47_N25
\b|enable1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|enable1~1_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|enable1~q\);

-- Location: LCCOMB_X113_Y47_N12
\b|gendlcd1|counter[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter[3]~7_combout\ = (!\SW[1]~input_o\ & ((!\b|gendlcd1|counter\(2)) # (!\b|gendlcd1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \b|gendlcd1|counter\(3),
	datad => \b|gendlcd1|counter\(2),
	combout => \b|gendlcd1|counter[3]~7_combout\);

-- Location: LCCOMB_X113_Y47_N22
\b|gendlcd1|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter~9_combout\ = (\b|gendlcd1|counter[3]~7_combout\ & (\b|gendlcd1|counter\(0) $ (\b|gendlcd1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b|gendlcd1|counter\(0),
	datac => \b|gendlcd1|counter\(1),
	datad => \b|gendlcd1|counter[3]~7_combout\,
	combout => \b|gendlcd1|counter~9_combout\);

-- Location: FF_X113_Y47_N23
\b|gendlcd1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|gendlcd1|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|gendlcd1|counter\(1));

-- Location: LCCOMB_X113_Y47_N20
\b|gendlcd1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|Add0~0_combout\ = (\b|gendlcd1|counter\(1) & \b|gendlcd1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b|gendlcd1|counter\(1),
	datad => \b|gendlcd1|counter\(0),
	combout => \b|gendlcd1|Add0~0_combout\);

-- Location: LCCOMB_X113_Y47_N26
\b|gendlcd1|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter~11_combout\ = (!\SW[1]~input_o\ & ((\b|gendlcd1|counter\(2) & (!\b|gendlcd1|counter\(3) & \b|gendlcd1|Add0~0_combout\)) # (!\b|gendlcd1|counter\(2) & (\b|gendlcd1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|gendlcd1|counter\(2),
	datac => \b|gendlcd1|counter\(3),
	datad => \b|gendlcd1|Add0~0_combout\,
	combout => \b|gendlcd1|counter~11_combout\);

-- Location: FF_X113_Y47_N27
\b|gendlcd1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|gendlcd1|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|gendlcd1|counter\(3));

-- Location: LCCOMB_X113_Y47_N28
\b|gendlcd1|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter~10_combout\ = (!\SW[1]~input_o\ & ((\b|gendlcd1|counter\(2) & (!\b|gendlcd1|counter\(3) & !\b|gendlcd1|Add0~0_combout\)) # (!\b|gendlcd1|counter\(2) & ((\b|gendlcd1|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|gendlcd1|counter\(3),
	datac => \b|gendlcd1|counter\(2),
	datad => \b|gendlcd1|Add0~0_combout\,
	combout => \b|gendlcd1|counter~10_combout\);

-- Location: FF_X113_Y47_N29
\b|gendlcd1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|gendlcd1|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|gendlcd1|counter\(2));

-- Location: LCCOMB_X113_Y47_N24
\b|gendlcd1|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter~8_combout\ = (!\SW[1]~input_o\ & (!\b|gendlcd1|counter\(0) & ((!\b|gendlcd1|counter\(3)) # (!\b|gendlcd1|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|gendlcd1|counter\(2),
	datac => \b|gendlcd1|counter\(0),
	datad => \b|gendlcd1|counter\(3),
	combout => \b|gendlcd1|counter~8_combout\);

-- Location: FF_X113_Y47_N25
\b|gendlcd1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|gendlcd1|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|gendlcd1|counter\(0));

-- Location: LCCOMB_X113_Y47_N6
\b|gendlcd1|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|counter~6_combout\ = (!\b|gendlcd1|counter\(0) & ((!\b|gendlcd1|counter\(2)) # (!\b|gendlcd1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b|gendlcd1|counter\(0),
	datac => \b|gendlcd1|counter\(3),
	datad => \b|gendlcd1|counter\(2),
	combout => \b|gendlcd1|counter~6_combout\);

-- Location: LCCOMB_X113_Y47_N16
\b|genplcd1|num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|genplcd1|num~0_combout\ = (!\SW[1]~input_o\ & ((\b|enable1~q\ & ((\b|gendlcd1|counter~6_combout\))) # (!\b|enable1~q\ & (\b|genplcd1|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|enable1~q\,
	datac => \b|genplcd1|num\(0),
	datad => \b|gendlcd1|counter~6_combout\,
	combout => \b|genplcd1|num~0_combout\);

-- Location: FF_X113_Y47_N17
\b|genplcd1|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|genplcd1|num~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|genplcd1|num\(0));

-- Location: LCCOMB_X114_Y47_N18
\b|enable2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|enable2~1_combout\ = \b|nextstate.S1~q\ $ (((\b|nextstate.S3~q\ & \b|enable2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b|nextstate.S3~q\,
	datac => \b|enable2~q\,
	datad => \b|nextstate.S1~q\,
	combout => \b|enable2~1_combout\);

-- Location: FF_X114_Y47_N19
\b|enable2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|enable2~1_combout\,
	ena => \ALT_INV_SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|enable2~q\);

-- Location: LCCOMB_X113_Y47_N30
\b|gendlcd1|num~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|gendlcd1|num~0_combout\ = (!\SW[1]~input_o\ & ((\b|enable2~q\ & ((\b|gendlcd1|counter~6_combout\))) # (!\b|enable2~q\ & (\b|gendlcd1|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \b|enable2~q\,
	datac => \b|gendlcd1|num\(0),
	datad => \b|gendlcd1|counter~6_combout\,
	combout => \b|gendlcd1|num~0_combout\);

-- Location: FF_X113_Y47_N31
\b|gendlcd1|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW[0]~input_o\,
	d => \b|gendlcd1|num~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|gendlcd1|num\(0));

ww_HEX(0) <= \HEX[0]~output_o\;

ww_HEX(1) <= \HEX[1]~output_o\;

ww_HEX(2) <= \HEX[2]~output_o\;

ww_HEX(3) <= \HEX[3]~output_o\;

ww_HEX(4) <= \HEX[4]~output_o\;

ww_HEX(5) <= \HEX[5]~output_o\;

ww_HEX(6) <= \HEX[6]~output_o\;

ww_HEX(7) <= \HEX[7]~output_o\;
END structure;


