// megafunction wizard: %Shift register (RAM-based)%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTSHIFT_TAPS 

// ============================================================
// File Name: history_reg.v
// Megafunction Name(s):
// 			ALTSHIFT_TAPS
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 12.1 Build 177 11/07/2012 SJ Full Version
// ************************************************************

//Copyright (C) 1991-2012 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module history_reg (
	clock,
	shiftin,
	shiftout,
	taps0x,
	taps100x,
	taps101x,
	taps102x,
	taps103x,
	taps104x,
	taps105x,
	taps106x,
	taps107x,
	taps108x,
	taps109x,
	taps10x,
	taps110x,
	taps111x,
	taps112x,
	taps113x,
	taps114x,
	taps115x,
	taps116x,
	taps117x,
	taps118x,
	taps119x,
	taps11x,
	taps120x,
	taps121x,
	taps122x,
	taps123x,
	taps124x,
	taps125x,
	taps126x,
	taps127x,
	taps12x,
	taps13x,
	taps14x,
	taps15x,
	taps16x,
	taps17x,
	taps18x,
	taps19x,
	taps1x,
	taps20x,
	taps21x,
	taps22x,
	taps23x,
	taps24x,
	taps25x,
	taps26x,
	taps27x,
	taps28x,
	taps29x,
	taps2x,
	taps30x,
	taps31x,
	taps32x,
	taps33x,
	taps34x,
	taps35x,
	taps36x,
	taps37x,
	taps38x,
	taps39x,
	taps3x,
	taps40x,
	taps41x,
	taps42x,
	taps43x,
	taps44x,
	taps45x,
	taps46x,
	taps47x,
	taps48x,
	taps49x,
	taps4x,
	taps50x,
	taps51x,
	taps52x,
	taps53x,
	taps54x,
	taps55x,
	taps56x,
	taps57x,
	taps58x,
	taps59x,
	taps5x,
	taps60x,
	taps61x,
	taps62x,
	taps63x,
	taps64x,
	taps65x,
	taps66x,
	taps67x,
	taps68x,
	taps69x,
	taps6x,
	taps70x,
	taps71x,
	taps72x,
	taps73x,
	taps74x,
	taps75x,
	taps76x,
	taps77x,
	taps78x,
	taps79x,
	taps7x,
	taps80x,
	taps81x,
	taps82x,
	taps83x,
	taps84x,
	taps85x,
	taps86x,
	taps87x,
	taps88x,
	taps89x,
	taps8x,
	taps90x,
	taps91x,
	taps92x,
	taps93x,
	taps94x,
	taps95x,
	taps96x,
	taps97x,
	taps98x,
	taps99x,
	taps9x);

	input	  clock;
	input	[11:0]  shiftin;
	output	[11:0]  shiftout;
	output	[11:0]  taps0x;
	output	[11:0]  taps100x;
	output	[11:0]  taps101x;
	output	[11:0]  taps102x;
	output	[11:0]  taps103x;
	output	[11:0]  taps104x;
	output	[11:0]  taps105x;
	output	[11:0]  taps106x;
	output	[11:0]  taps107x;
	output	[11:0]  taps108x;
	output	[11:0]  taps109x;
	output	[11:0]  taps10x;
	output	[11:0]  taps110x;
	output	[11:0]  taps111x;
	output	[11:0]  taps112x;
	output	[11:0]  taps113x;
	output	[11:0]  taps114x;
	output	[11:0]  taps115x;
	output	[11:0]  taps116x;
	output	[11:0]  taps117x;
	output	[11:0]  taps118x;
	output	[11:0]  taps119x;
	output	[11:0]  taps11x;
	output	[11:0]  taps120x;
	output	[11:0]  taps121x;
	output	[11:0]  taps122x;
	output	[11:0]  taps123x;
	output	[11:0]  taps124x;
	output	[11:0]  taps125x;
	output	[11:0]  taps126x;
	output	[11:0]  taps127x;
	output	[11:0]  taps12x;
	output	[11:0]  taps13x;
	output	[11:0]  taps14x;
	output	[11:0]  taps15x;
	output	[11:0]  taps16x;
	output	[11:0]  taps17x;
	output	[11:0]  taps18x;
	output	[11:0]  taps19x;
	output	[11:0]  taps1x;
	output	[11:0]  taps20x;
	output	[11:0]  taps21x;
	output	[11:0]  taps22x;
	output	[11:0]  taps23x;
	output	[11:0]  taps24x;
	output	[11:0]  taps25x;
	output	[11:0]  taps26x;
	output	[11:0]  taps27x;
	output	[11:0]  taps28x;
	output	[11:0]  taps29x;
	output	[11:0]  taps2x;
	output	[11:0]  taps30x;
	output	[11:0]  taps31x;
	output	[11:0]  taps32x;
	output	[11:0]  taps33x;
	output	[11:0]  taps34x;
	output	[11:0]  taps35x;
	output	[11:0]  taps36x;
	output	[11:0]  taps37x;
	output	[11:0]  taps38x;
	output	[11:0]  taps39x;
	output	[11:0]  taps3x;
	output	[11:0]  taps40x;
	output	[11:0]  taps41x;
	output	[11:0]  taps42x;
	output	[11:0]  taps43x;
	output	[11:0]  taps44x;
	output	[11:0]  taps45x;
	output	[11:0]  taps46x;
	output	[11:0]  taps47x;
	output	[11:0]  taps48x;
	output	[11:0]  taps49x;
	output	[11:0]  taps4x;
	output	[11:0]  taps50x;
	output	[11:0]  taps51x;
	output	[11:0]  taps52x;
	output	[11:0]  taps53x;
	output	[11:0]  taps54x;
	output	[11:0]  taps55x;
	output	[11:0]  taps56x;
	output	[11:0]  taps57x;
	output	[11:0]  taps58x;
	output	[11:0]  taps59x;
	output	[11:0]  taps5x;
	output	[11:0]  taps60x;
	output	[11:0]  taps61x;
	output	[11:0]  taps62x;
	output	[11:0]  taps63x;
	output	[11:0]  taps64x;
	output	[11:0]  taps65x;
	output	[11:0]  taps66x;
	output	[11:0]  taps67x;
	output	[11:0]  taps68x;
	output	[11:0]  taps69x;
	output	[11:0]  taps6x;
	output	[11:0]  taps70x;
	output	[11:0]  taps71x;
	output	[11:0]  taps72x;
	output	[11:0]  taps73x;
	output	[11:0]  taps74x;
	output	[11:0]  taps75x;
	output	[11:0]  taps76x;
	output	[11:0]  taps77x;
	output	[11:0]  taps78x;
	output	[11:0]  taps79x;
	output	[11:0]  taps7x;
	output	[11:0]  taps80x;
	output	[11:0]  taps81x;
	output	[11:0]  taps82x;
	output	[11:0]  taps83x;
	output	[11:0]  taps84x;
	output	[11:0]  taps85x;
	output	[11:0]  taps86x;
	output	[11:0]  taps87x;
	output	[11:0]  taps88x;
	output	[11:0]  taps89x;
	output	[11:0]  taps8x;
	output	[11:0]  taps90x;
	output	[11:0]  taps91x;
	output	[11:0]  taps92x;
	output	[11:0]  taps93x;
	output	[11:0]  taps94x;
	output	[11:0]  taps95x;
	output	[11:0]  taps96x;
	output	[11:0]  taps97x;
	output	[11:0]  taps98x;
	output	[11:0]  taps99x;
	output	[11:0]  taps9x;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "0"
// Retrieval info: PRIVATE: CLKEN NUMERIC "0"
// Retrieval info: PRIVATE: GROUP_TAPS NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: NUMBER_OF_TAPS NUMERIC "128"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "3"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: TAP_DISTANCE NUMERIC "3"
// Retrieval info: PRIVATE: WIDTH NUMERIC "12"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: CONSTANT: LPM_HINT STRING "RAM_BLOCK_TYPE=AUTO"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altshift_taps"
// Retrieval info: CONSTANT: NUMBER_OF_TAPS NUMERIC "128"
// Retrieval info: CONSTANT: TAP_DISTANCE NUMERIC "3"
// Retrieval info: CONSTANT: WIDTH NUMERIC "12"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: shiftin 0 0 12 0 INPUT NODEFVAL "shiftin[11..0]"
// Retrieval info: USED_PORT: shiftout 0 0 12 0 OUTPUT NODEFVAL "shiftout[11..0]"
// Retrieval info: USED_PORT: taps0x 0 0 12 0 OUTPUT NODEFVAL "taps0x[11..0]"
// Retrieval info: USED_PORT: taps100x 0 0 12 0 OUTPUT NODEFVAL "taps100x[11..0]"
// Retrieval info: USED_PORT: taps101x 0 0 12 0 OUTPUT NODEFVAL "taps101x[11..0]"
// Retrieval info: USED_PORT: taps102x 0 0 12 0 OUTPUT NODEFVAL "taps102x[11..0]"
// Retrieval info: USED_PORT: taps103x 0 0 12 0 OUTPUT NODEFVAL "taps103x[11..0]"
// Retrieval info: USED_PORT: taps104x 0 0 12 0 OUTPUT NODEFVAL "taps104x[11..0]"
// Retrieval info: USED_PORT: taps105x 0 0 12 0 OUTPUT NODEFVAL "taps105x[11..0]"
// Retrieval info: USED_PORT: taps106x 0 0 12 0 OUTPUT NODEFVAL "taps106x[11..0]"
// Retrieval info: USED_PORT: taps107x 0 0 12 0 OUTPUT NODEFVAL "taps107x[11..0]"
// Retrieval info: USED_PORT: taps108x 0 0 12 0 OUTPUT NODEFVAL "taps108x[11..0]"
// Retrieval info: USED_PORT: taps109x 0 0 12 0 OUTPUT NODEFVAL "taps109x[11..0]"
// Retrieval info: USED_PORT: taps10x 0 0 12 0 OUTPUT NODEFVAL "taps10x[11..0]"
// Retrieval info: USED_PORT: taps110x 0 0 12 0 OUTPUT NODEFVAL "taps110x[11..0]"
// Retrieval info: USED_PORT: taps111x 0 0 12 0 OUTPUT NODEFVAL "taps111x[11..0]"
// Retrieval info: USED_PORT: taps112x 0 0 12 0 OUTPUT NODEFVAL "taps112x[11..0]"
// Retrieval info: USED_PORT: taps113x 0 0 12 0 OUTPUT NODEFVAL "taps113x[11..0]"
// Retrieval info: USED_PORT: taps114x 0 0 12 0 OUTPUT NODEFVAL "taps114x[11..0]"
// Retrieval info: USED_PORT: taps115x 0 0 12 0 OUTPUT NODEFVAL "taps115x[11..0]"
// Retrieval info: USED_PORT: taps116x 0 0 12 0 OUTPUT NODEFVAL "taps116x[11..0]"
// Retrieval info: USED_PORT: taps117x 0 0 12 0 OUTPUT NODEFVAL "taps117x[11..0]"
// Retrieval info: USED_PORT: taps118x 0 0 12 0 OUTPUT NODEFVAL "taps118x[11..0]"
// Retrieval info: USED_PORT: taps119x 0 0 12 0 OUTPUT NODEFVAL "taps119x[11..0]"
// Retrieval info: USED_PORT: taps11x 0 0 12 0 OUTPUT NODEFVAL "taps11x[11..0]"
// Retrieval info: USED_PORT: taps120x 0 0 12 0 OUTPUT NODEFVAL "taps120x[11..0]"
// Retrieval info: USED_PORT: taps121x 0 0 12 0 OUTPUT NODEFVAL "taps121x[11..0]"
// Retrieval info: USED_PORT: taps122x 0 0 12 0 OUTPUT NODEFVAL "taps122x[11..0]"
// Retrieval info: USED_PORT: taps123x 0 0 12 0 OUTPUT NODEFVAL "taps123x[11..0]"
// Retrieval info: USED_PORT: taps124x 0 0 12 0 OUTPUT NODEFVAL "taps124x[11..0]"
// Retrieval info: USED_PORT: taps125x 0 0 12 0 OUTPUT NODEFVAL "taps125x[11..0]"
// Retrieval info: USED_PORT: taps126x 0 0 12 0 OUTPUT NODEFVAL "taps126x[11..0]"
// Retrieval info: USED_PORT: taps127x 0 0 12 0 OUTPUT NODEFVAL "taps127x[11..0]"
// Retrieval info: USED_PORT: taps12x 0 0 12 0 OUTPUT NODEFVAL "taps12x[11..0]"
// Retrieval info: USED_PORT: taps13x 0 0 12 0 OUTPUT NODEFVAL "taps13x[11..0]"
// Retrieval info: USED_PORT: taps14x 0 0 12 0 OUTPUT NODEFVAL "taps14x[11..0]"
// Retrieval info: USED_PORT: taps15x 0 0 12 0 OUTPUT NODEFVAL "taps15x[11..0]"
// Retrieval info: USED_PORT: taps16x 0 0 12 0 OUTPUT NODEFVAL "taps16x[11..0]"
// Retrieval info: USED_PORT: taps17x 0 0 12 0 OUTPUT NODEFVAL "taps17x[11..0]"
// Retrieval info: USED_PORT: taps18x 0 0 12 0 OUTPUT NODEFVAL "taps18x[11..0]"
// Retrieval info: USED_PORT: taps19x 0 0 12 0 OUTPUT NODEFVAL "taps19x[11..0]"
// Retrieval info: USED_PORT: taps1x 0 0 12 0 OUTPUT NODEFVAL "taps1x[11..0]"
// Retrieval info: USED_PORT: taps20x 0 0 12 0 OUTPUT NODEFVAL "taps20x[11..0]"
// Retrieval info: USED_PORT: taps21x 0 0 12 0 OUTPUT NODEFVAL "taps21x[11..0]"
// Retrieval info: USED_PORT: taps22x 0 0 12 0 OUTPUT NODEFVAL "taps22x[11..0]"
// Retrieval info: USED_PORT: taps23x 0 0 12 0 OUTPUT NODEFVAL "taps23x[11..0]"
// Retrieval info: USED_PORT: taps24x 0 0 12 0 OUTPUT NODEFVAL "taps24x[11..0]"
// Retrieval info: USED_PORT: taps25x 0 0 12 0 OUTPUT NODEFVAL "taps25x[11..0]"
// Retrieval info: USED_PORT: taps26x 0 0 12 0 OUTPUT NODEFVAL "taps26x[11..0]"
// Retrieval info: USED_PORT: taps27x 0 0 12 0 OUTPUT NODEFVAL "taps27x[11..0]"
// Retrieval info: USED_PORT: taps28x 0 0 12 0 OUTPUT NODEFVAL "taps28x[11..0]"
// Retrieval info: USED_PORT: taps29x 0 0 12 0 OUTPUT NODEFVAL "taps29x[11..0]"
// Retrieval info: USED_PORT: taps2x 0 0 12 0 OUTPUT NODEFVAL "taps2x[11..0]"
// Retrieval info: USED_PORT: taps30x 0 0 12 0 OUTPUT NODEFVAL "taps30x[11..0]"
// Retrieval info: USED_PORT: taps31x 0 0 12 0 OUTPUT NODEFVAL "taps31x[11..0]"
// Retrieval info: USED_PORT: taps32x 0 0 12 0 OUTPUT NODEFVAL "taps32x[11..0]"
// Retrieval info: USED_PORT: taps33x 0 0 12 0 OUTPUT NODEFVAL "taps33x[11..0]"
// Retrieval info: USED_PORT: taps34x 0 0 12 0 OUTPUT NODEFVAL "taps34x[11..0]"
// Retrieval info: USED_PORT: taps35x 0 0 12 0 OUTPUT NODEFVAL "taps35x[11..0]"
// Retrieval info: USED_PORT: taps36x 0 0 12 0 OUTPUT NODEFVAL "taps36x[11..0]"
// Retrieval info: USED_PORT: taps37x 0 0 12 0 OUTPUT NODEFVAL "taps37x[11..0]"
// Retrieval info: USED_PORT: taps38x 0 0 12 0 OUTPUT NODEFVAL "taps38x[11..0]"
// Retrieval info: USED_PORT: taps39x 0 0 12 0 OUTPUT NODEFVAL "taps39x[11..0]"
// Retrieval info: USED_PORT: taps3x 0 0 12 0 OUTPUT NODEFVAL "taps3x[11..0]"
// Retrieval info: USED_PORT: taps40x 0 0 12 0 OUTPUT NODEFVAL "taps40x[11..0]"
// Retrieval info: USED_PORT: taps41x 0 0 12 0 OUTPUT NODEFVAL "taps41x[11..0]"
// Retrieval info: USED_PORT: taps42x 0 0 12 0 OUTPUT NODEFVAL "taps42x[11..0]"
// Retrieval info: USED_PORT: taps43x 0 0 12 0 OUTPUT NODEFVAL "taps43x[11..0]"
// Retrieval info: USED_PORT: taps44x 0 0 12 0 OUTPUT NODEFVAL "taps44x[11..0]"
// Retrieval info: USED_PORT: taps45x 0 0 12 0 OUTPUT NODEFVAL "taps45x[11..0]"
// Retrieval info: USED_PORT: taps46x 0 0 12 0 OUTPUT NODEFVAL "taps46x[11..0]"
// Retrieval info: USED_PORT: taps47x 0 0 12 0 OUTPUT NODEFVAL "taps47x[11..0]"
// Retrieval info: USED_PORT: taps48x 0 0 12 0 OUTPUT NODEFVAL "taps48x[11..0]"
// Retrieval info: USED_PORT: taps49x 0 0 12 0 OUTPUT NODEFVAL "taps49x[11..0]"
// Retrieval info: USED_PORT: taps4x 0 0 12 0 OUTPUT NODEFVAL "taps4x[11..0]"
// Retrieval info: USED_PORT: taps50x 0 0 12 0 OUTPUT NODEFVAL "taps50x[11..0]"
// Retrieval info: USED_PORT: taps51x 0 0 12 0 OUTPUT NODEFVAL "taps51x[11..0]"
// Retrieval info: USED_PORT: taps52x 0 0 12 0 OUTPUT NODEFVAL "taps52x[11..0]"
// Retrieval info: USED_PORT: taps53x 0 0 12 0 OUTPUT NODEFVAL "taps53x[11..0]"
// Retrieval info: USED_PORT: taps54x 0 0 12 0 OUTPUT NODEFVAL "taps54x[11..0]"
// Retrieval info: USED_PORT: taps55x 0 0 12 0 OUTPUT NODEFVAL "taps55x[11..0]"
// Retrieval info: USED_PORT: taps56x 0 0 12 0 OUTPUT NODEFVAL "taps56x[11..0]"
// Retrieval info: USED_PORT: taps57x 0 0 12 0 OUTPUT NODEFVAL "taps57x[11..0]"
// Retrieval info: USED_PORT: taps58x 0 0 12 0 OUTPUT NODEFVAL "taps58x[11..0]"
// Retrieval info: USED_PORT: taps59x 0 0 12 0 OUTPUT NODEFVAL "taps59x[11..0]"
// Retrieval info: USED_PORT: taps5x 0 0 12 0 OUTPUT NODEFVAL "taps5x[11..0]"
// Retrieval info: USED_PORT: taps60x 0 0 12 0 OUTPUT NODEFVAL "taps60x[11..0]"
// Retrieval info: USED_PORT: taps61x 0 0 12 0 OUTPUT NODEFVAL "taps61x[11..0]"
// Retrieval info: USED_PORT: taps62x 0 0 12 0 OUTPUT NODEFVAL "taps62x[11..0]"
// Retrieval info: USED_PORT: taps63x 0 0 12 0 OUTPUT NODEFVAL "taps63x[11..0]"
// Retrieval info: USED_PORT: taps64x 0 0 12 0 OUTPUT NODEFVAL "taps64x[11..0]"
// Retrieval info: USED_PORT: taps65x 0 0 12 0 OUTPUT NODEFVAL "taps65x[11..0]"
// Retrieval info: USED_PORT: taps66x 0 0 12 0 OUTPUT NODEFVAL "taps66x[11..0]"
// Retrieval info: USED_PORT: taps67x 0 0 12 0 OUTPUT NODEFVAL "taps67x[11..0]"
// Retrieval info: USED_PORT: taps68x 0 0 12 0 OUTPUT NODEFVAL "taps68x[11..0]"
// Retrieval info: USED_PORT: taps69x 0 0 12 0 OUTPUT NODEFVAL "taps69x[11..0]"
// Retrieval info: USED_PORT: taps6x 0 0 12 0 OUTPUT NODEFVAL "taps6x[11..0]"
// Retrieval info: USED_PORT: taps70x 0 0 12 0 OUTPUT NODEFVAL "taps70x[11..0]"
// Retrieval info: USED_PORT: taps71x 0 0 12 0 OUTPUT NODEFVAL "taps71x[11..0]"
// Retrieval info: USED_PORT: taps72x 0 0 12 0 OUTPUT NODEFVAL "taps72x[11..0]"
// Retrieval info: USED_PORT: taps73x 0 0 12 0 OUTPUT NODEFVAL "taps73x[11..0]"
// Retrieval info: USED_PORT: taps74x 0 0 12 0 OUTPUT NODEFVAL "taps74x[11..0]"
// Retrieval info: USED_PORT: taps75x 0 0 12 0 OUTPUT NODEFVAL "taps75x[11..0]"
// Retrieval info: USED_PORT: taps76x 0 0 12 0 OUTPUT NODEFVAL "taps76x[11..0]"
// Retrieval info: USED_PORT: taps77x 0 0 12 0 OUTPUT NODEFVAL "taps77x[11..0]"
// Retrieval info: USED_PORT: taps78x 0 0 12 0 OUTPUT NODEFVAL "taps78x[11..0]"
// Retrieval info: USED_PORT: taps79x 0 0 12 0 OUTPUT NODEFVAL "taps79x[11..0]"
// Retrieval info: USED_PORT: taps7x 0 0 12 0 OUTPUT NODEFVAL "taps7x[11..0]"
// Retrieval info: USED_PORT: taps80x 0 0 12 0 OUTPUT NODEFVAL "taps80x[11..0]"
// Retrieval info: USED_PORT: taps81x 0 0 12 0 OUTPUT NODEFVAL "taps81x[11..0]"
// Retrieval info: USED_PORT: taps82x 0 0 12 0 OUTPUT NODEFVAL "taps82x[11..0]"
// Retrieval info: USED_PORT: taps83x 0 0 12 0 OUTPUT NODEFVAL "taps83x[11..0]"
// Retrieval info: USED_PORT: taps84x 0 0 12 0 OUTPUT NODEFVAL "taps84x[11..0]"
// Retrieval info: USED_PORT: taps85x 0 0 12 0 OUTPUT NODEFVAL "taps85x[11..0]"
// Retrieval info: USED_PORT: taps86x 0 0 12 0 OUTPUT NODEFVAL "taps86x[11..0]"
// Retrieval info: USED_PORT: taps87x 0 0 12 0 OUTPUT NODEFVAL "taps87x[11..0]"
// Retrieval info: USED_PORT: taps88x 0 0 12 0 OUTPUT NODEFVAL "taps88x[11..0]"
// Retrieval info: USED_PORT: taps89x 0 0 12 0 OUTPUT NODEFVAL "taps89x[11..0]"
// Retrieval info: USED_PORT: taps8x 0 0 12 0 OUTPUT NODEFVAL "taps8x[11..0]"
// Retrieval info: USED_PORT: taps90x 0 0 12 0 OUTPUT NODEFVAL "taps90x[11..0]"
// Retrieval info: USED_PORT: taps91x 0 0 12 0 OUTPUT NODEFVAL "taps91x[11..0]"
// Retrieval info: USED_PORT: taps92x 0 0 12 0 OUTPUT NODEFVAL "taps92x[11..0]"
// Retrieval info: USED_PORT: taps93x 0 0 12 0 OUTPUT NODEFVAL "taps93x[11..0]"
// Retrieval info: USED_PORT: taps94x 0 0 12 0 OUTPUT NODEFVAL "taps94x[11..0]"
// Retrieval info: USED_PORT: taps95x 0 0 12 0 OUTPUT NODEFVAL "taps95x[11..0]"
// Retrieval info: USED_PORT: taps96x 0 0 12 0 OUTPUT NODEFVAL "taps96x[11..0]"
// Retrieval info: USED_PORT: taps97x 0 0 12 0 OUTPUT NODEFVAL "taps97x[11..0]"
// Retrieval info: USED_PORT: taps98x 0 0 12 0 OUTPUT NODEFVAL "taps98x[11..0]"
// Retrieval info: USED_PORT: taps99x 0 0 12 0 OUTPUT NODEFVAL "taps99x[11..0]"
// Retrieval info: USED_PORT: taps9x 0 0 12 0 OUTPUT NODEFVAL "taps9x[11..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @shiftin 0 0 12 0 shiftin 0 0 12 0
// Retrieval info: CONNECT: shiftout 0 0 12 0 @shiftout 0 0 12 0
// Retrieval info: CONNECT: taps0x 0 0 12 0 @taps 0 0 12 0
// Retrieval info: CONNECT: taps100x 0 0 12 0 @taps 0 0 12 1200
// Retrieval info: CONNECT: taps101x 0 0 12 0 @taps 0 0 12 1212
// Retrieval info: CONNECT: taps102x 0 0 12 0 @taps 0 0 12 1224
// Retrieval info: CONNECT: taps103x 0 0 12 0 @taps 0 0 12 1236
// Retrieval info: CONNECT: taps104x 0 0 12 0 @taps 0 0 12 1248
// Retrieval info: CONNECT: taps105x 0 0 12 0 @taps 0 0 12 1260
// Retrieval info: CONNECT: taps106x 0 0 12 0 @taps 0 0 12 1272
// Retrieval info: CONNECT: taps107x 0 0 12 0 @taps 0 0 12 1284
// Retrieval info: CONNECT: taps108x 0 0 12 0 @taps 0 0 12 1296
// Retrieval info: CONNECT: taps109x 0 0 12 0 @taps 0 0 12 1308
// Retrieval info: CONNECT: taps10x 0 0 12 0 @taps 0 0 12 120
// Retrieval info: CONNECT: taps110x 0 0 12 0 @taps 0 0 12 1320
// Retrieval info: CONNECT: taps111x 0 0 12 0 @taps 0 0 12 1332
// Retrieval info: CONNECT: taps112x 0 0 12 0 @taps 0 0 12 1344
// Retrieval info: CONNECT: taps113x 0 0 12 0 @taps 0 0 12 1356
// Retrieval info: CONNECT: taps114x 0 0 12 0 @taps 0 0 12 1368
// Retrieval info: CONNECT: taps115x 0 0 12 0 @taps 0 0 12 1380
// Retrieval info: CONNECT: taps116x 0 0 12 0 @taps 0 0 12 1392
// Retrieval info: CONNECT: taps117x 0 0 12 0 @taps 0 0 12 1404
// Retrieval info: CONNECT: taps118x 0 0 12 0 @taps 0 0 12 1416
// Retrieval info: CONNECT: taps119x 0 0 12 0 @taps 0 0 12 1428
// Retrieval info: CONNECT: taps11x 0 0 12 0 @taps 0 0 12 132
// Retrieval info: CONNECT: taps120x 0 0 12 0 @taps 0 0 12 1440
// Retrieval info: CONNECT: taps121x 0 0 12 0 @taps 0 0 12 1452
// Retrieval info: CONNECT: taps122x 0 0 12 0 @taps 0 0 12 1464
// Retrieval info: CONNECT: taps123x 0 0 12 0 @taps 0 0 12 1476
// Retrieval info: CONNECT: taps124x 0 0 12 0 @taps 0 0 12 1488
// Retrieval info: CONNECT: taps125x 0 0 12 0 @taps 0 0 12 1500
// Retrieval info: CONNECT: taps126x 0 0 12 0 @taps 0 0 12 1512
// Retrieval info: CONNECT: taps127x 0 0 12 0 @taps 0 0 12 1524
// Retrieval info: CONNECT: taps12x 0 0 12 0 @taps 0 0 12 144
// Retrieval info: CONNECT: taps13x 0 0 12 0 @taps 0 0 12 156
// Retrieval info: CONNECT: taps14x 0 0 12 0 @taps 0 0 12 168
// Retrieval info: CONNECT: taps15x 0 0 12 0 @taps 0 0 12 180
// Retrieval info: CONNECT: taps16x 0 0 12 0 @taps 0 0 12 192
// Retrieval info: CONNECT: taps17x 0 0 12 0 @taps 0 0 12 204
// Retrieval info: CONNECT: taps18x 0 0 12 0 @taps 0 0 12 216
// Retrieval info: CONNECT: taps19x 0 0 12 0 @taps 0 0 12 228
// Retrieval info: CONNECT: taps1x 0 0 12 0 @taps 0 0 12 12
// Retrieval info: CONNECT: taps20x 0 0 12 0 @taps 0 0 12 240
// Retrieval info: CONNECT: taps21x 0 0 12 0 @taps 0 0 12 252
// Retrieval info: CONNECT: taps22x 0 0 12 0 @taps 0 0 12 264
// Retrieval info: CONNECT: taps23x 0 0 12 0 @taps 0 0 12 276
// Retrieval info: CONNECT: taps24x 0 0 12 0 @taps 0 0 12 288
// Retrieval info: CONNECT: taps25x 0 0 12 0 @taps 0 0 12 300
// Retrieval info: CONNECT: taps26x 0 0 12 0 @taps 0 0 12 312
// Retrieval info: CONNECT: taps27x 0 0 12 0 @taps 0 0 12 324
// Retrieval info: CONNECT: taps28x 0 0 12 0 @taps 0 0 12 336
// Retrieval info: CONNECT: taps29x 0 0 12 0 @taps 0 0 12 348
// Retrieval info: CONNECT: taps2x 0 0 12 0 @taps 0 0 12 24
// Retrieval info: CONNECT: taps30x 0 0 12 0 @taps 0 0 12 360
// Retrieval info: CONNECT: taps31x 0 0 12 0 @taps 0 0 12 372
// Retrieval info: CONNECT: taps32x 0 0 12 0 @taps 0 0 12 384
// Retrieval info: CONNECT: taps33x 0 0 12 0 @taps 0 0 12 396
// Retrieval info: CONNECT: taps34x 0 0 12 0 @taps 0 0 12 408
// Retrieval info: CONNECT: taps35x 0 0 12 0 @taps 0 0 12 420
// Retrieval info: CONNECT: taps36x 0 0 12 0 @taps 0 0 12 432
// Retrieval info: CONNECT: taps37x 0 0 12 0 @taps 0 0 12 444
// Retrieval info: CONNECT: taps38x 0 0 12 0 @taps 0 0 12 456
// Retrieval info: CONNECT: taps39x 0 0 12 0 @taps 0 0 12 468
// Retrieval info: CONNECT: taps3x 0 0 12 0 @taps 0 0 12 36
// Retrieval info: CONNECT: taps40x 0 0 12 0 @taps 0 0 12 480
// Retrieval info: CONNECT: taps41x 0 0 12 0 @taps 0 0 12 492
// Retrieval info: CONNECT: taps42x 0 0 12 0 @taps 0 0 12 504
// Retrieval info: CONNECT: taps43x 0 0 12 0 @taps 0 0 12 516
// Retrieval info: CONNECT: taps44x 0 0 12 0 @taps 0 0 12 528
// Retrieval info: CONNECT: taps45x 0 0 12 0 @taps 0 0 12 540
// Retrieval info: CONNECT: taps46x 0 0 12 0 @taps 0 0 12 552
// Retrieval info: CONNECT: taps47x 0 0 12 0 @taps 0 0 12 564
// Retrieval info: CONNECT: taps48x 0 0 12 0 @taps 0 0 12 576
// Retrieval info: CONNECT: taps49x 0 0 12 0 @taps 0 0 12 588
// Retrieval info: CONNECT: taps4x 0 0 12 0 @taps 0 0 12 48
// Retrieval info: CONNECT: taps50x 0 0 12 0 @taps 0 0 12 600
// Retrieval info: CONNECT: taps51x 0 0 12 0 @taps 0 0 12 612
// Retrieval info: CONNECT: taps52x 0 0 12 0 @taps 0 0 12 624
// Retrieval info: CONNECT: taps53x 0 0 12 0 @taps 0 0 12 636
// Retrieval info: CONNECT: taps54x 0 0 12 0 @taps 0 0 12 648
// Retrieval info: CONNECT: taps55x 0 0 12 0 @taps 0 0 12 660
// Retrieval info: CONNECT: taps56x 0 0 12 0 @taps 0 0 12 672
// Retrieval info: CONNECT: taps57x 0 0 12 0 @taps 0 0 12 684
// Retrieval info: CONNECT: taps58x 0 0 12 0 @taps 0 0 12 696
// Retrieval info: CONNECT: taps59x 0 0 12 0 @taps 0 0 12 708
// Retrieval info: CONNECT: taps5x 0 0 12 0 @taps 0 0 12 60
// Retrieval info: CONNECT: taps60x 0 0 12 0 @taps 0 0 12 720
// Retrieval info: CONNECT: taps61x 0 0 12 0 @taps 0 0 12 732
// Retrieval info: CONNECT: taps62x 0 0 12 0 @taps 0 0 12 744
// Retrieval info: CONNECT: taps63x 0 0 12 0 @taps 0 0 12 756
// Retrieval info: CONNECT: taps64x 0 0 12 0 @taps 0 0 12 768
// Retrieval info: CONNECT: taps65x 0 0 12 0 @taps 0 0 12 780
// Retrieval info: CONNECT: taps66x 0 0 12 0 @taps 0 0 12 792
// Retrieval info: CONNECT: taps67x 0 0 12 0 @taps 0 0 12 804
// Retrieval info: CONNECT: taps68x 0 0 12 0 @taps 0 0 12 816
// Retrieval info: CONNECT: taps69x 0 0 12 0 @taps 0 0 12 828
// Retrieval info: CONNECT: taps6x 0 0 12 0 @taps 0 0 12 72
// Retrieval info: CONNECT: taps70x 0 0 12 0 @taps 0 0 12 840
// Retrieval info: CONNECT: taps71x 0 0 12 0 @taps 0 0 12 852
// Retrieval info: CONNECT: taps72x 0 0 12 0 @taps 0 0 12 864
// Retrieval info: CONNECT: taps73x 0 0 12 0 @taps 0 0 12 876
// Retrieval info: CONNECT: taps74x 0 0 12 0 @taps 0 0 12 888
// Retrieval info: CONNECT: taps75x 0 0 12 0 @taps 0 0 12 900
// Retrieval info: CONNECT: taps76x 0 0 12 0 @taps 0 0 12 912
// Retrieval info: CONNECT: taps77x 0 0 12 0 @taps 0 0 12 924
// Retrieval info: CONNECT: taps78x 0 0 12 0 @taps 0 0 12 936
// Retrieval info: CONNECT: taps79x 0 0 12 0 @taps 0 0 12 948
// Retrieval info: CONNECT: taps7x 0 0 12 0 @taps 0 0 12 84
// Retrieval info: CONNECT: taps80x 0 0 12 0 @taps 0 0 12 960
// Retrieval info: CONNECT: taps81x 0 0 12 0 @taps 0 0 12 972
// Retrieval info: CONNECT: taps82x 0 0 12 0 @taps 0 0 12 984
// Retrieval info: CONNECT: taps83x 0 0 12 0 @taps 0 0 12 996
// Retrieval info: CONNECT: taps84x 0 0 12 0 @taps 0 0 12 1008
// Retrieval info: CONNECT: taps85x 0 0 12 0 @taps 0 0 12 1020
// Retrieval info: CONNECT: taps86x 0 0 12 0 @taps 0 0 12 1032
// Retrieval info: CONNECT: taps87x 0 0 12 0 @taps 0 0 12 1044
// Retrieval info: CONNECT: taps88x 0 0 12 0 @taps 0 0 12 1056
// Retrieval info: CONNECT: taps89x 0 0 12 0 @taps 0 0 12 1068
// Retrieval info: CONNECT: taps8x 0 0 12 0 @taps 0 0 12 96
// Retrieval info: CONNECT: taps90x 0 0 12 0 @taps 0 0 12 1080
// Retrieval info: CONNECT: taps91x 0 0 12 0 @taps 0 0 12 1092
// Retrieval info: CONNECT: taps92x 0 0 12 0 @taps 0 0 12 1104
// Retrieval info: CONNECT: taps93x 0 0 12 0 @taps 0 0 12 1116
// Retrieval info: CONNECT: taps94x 0 0 12 0 @taps 0 0 12 1128
// Retrieval info: CONNECT: taps95x 0 0 12 0 @taps 0 0 12 1140
// Retrieval info: CONNECT: taps96x 0 0 12 0 @taps 0 0 12 1152
// Retrieval info: CONNECT: taps97x 0 0 12 0 @taps 0 0 12 1164
// Retrieval info: CONNECT: taps98x 0 0 12 0 @taps 0 0 12 1176
// Retrieval info: CONNECT: taps99x 0 0 12 0 @taps 0 0 12 1188
// Retrieval info: CONNECT: taps9x 0 0 12 0 @taps 0 0 12 108
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL history_reg_bb.v TRUE
// Retrieval info: LIB_FILE: altera_mf
