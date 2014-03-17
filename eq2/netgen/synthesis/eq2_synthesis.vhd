--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: eq2_synthesis.vhd
-- /___/   /\     Timestamp: Mon Mar 17 21:25:49 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm eq2 -w -dir netgen/synthesis -ofmt vhdl -sim eq2.ngc eq2_synthesis.vhd 
-- Device	: xc3s200-4-ft256
-- Input file	: eq2.ngc
-- Output file	: C:\Users\James Donnellan\Documents\GitHub\yolo-octo-wallhack\eq2\netgen\synthesis\eq2_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: eq2
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity eq2 is
  port (
    aeqb : out STD_LOGIC; 
    a : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end eq2;

architecture Structure of eq2 is
  signal a_0_IBUF_2 : STD_LOGIC; 
  signal a_1_IBUF_3 : STD_LOGIC; 
  signal aeqb_OBUF_5 : STD_LOGIC; 
  signal b_0_IBUF_8 : STD_LOGIC; 
  signal b_1_IBUF_9 : STD_LOGIC; 
begin
  aeqb1 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => a_1_IBUF_3,
      I1 => b_1_IBUF_9,
      I2 => a_0_IBUF_2,
      I3 => b_0_IBUF_8,
      O => aeqb_OBUF_5
    );
  a_1_IBUF : IBUF
    port map (
      I => a(1),
      O => a_1_IBUF_3
    );
  a_0_IBUF : IBUF
    port map (
      I => a(0),
      O => a_0_IBUF_2
    );
  b_1_IBUF : IBUF
    port map (
      I => b(1),
      O => b_1_IBUF_9
    );
  b_0_IBUF : IBUF
    port map (
      I => b(0),
      O => b_0_IBUF_8
    );
  aeqb_OBUF : OBUF
    port map (
      I => aeqb_OBUF_5,
      O => aeqb
    );

end Structure;

