--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Dec  7 16:49:00 2024
--
library ieee;
use ieee.std_logic_1164.all;
library machxo2;
use machxo2.components.all;
library work;
use work.components.all;

entity wrapper_for_ARBITER_TOP is
   port (
      INV_WRL : out std_logic;
      INV_WRU : out std_logic;
      INV_WRLL : out std_logic;
      INV_WRLM : out std_logic;
      INV_WRUM : out std_logic;
      INV_WRUU : out std_logic;
      PLDCLK : in std_logic;
      INV_MPU_DSACK1 : out std_logic;
      INV_AS : in std_logic;
      INV_SEL_1 : in std_logic;
      INV_MPU_DSACK0 : out std_logic;
      WAIT1 : in std_logic;
      INV_SEL_C : in std_logic;
      INV_IACK_AVEC : out std_logic;
      INV_CPU : out std_logic;
      INV_DS : in std_logic;
      INV_WR : out std_logic;
      R_W : in std_logic;
      INV_RD : out std_logic;
      A0 : in std_logic;
      SIZ1 : in std_logic;
      SIZ0 : in std_logic;
      A1 : in std_logic;
      INV_SEL_F : in std_logic;
      INV_FC2 : in std_logic;
      INV_FC1 : in std_logic;
      INV_FC0 : in std_logic;
      INV_SEL_4toB : in std_logic;
      WAIT2 : in std_logic;
      INV_SEL_0 : in std_logic
   );
end wrapper_for_ARBITER_TOP;

architecture schematic of wrapper_for_ARBITER_TOP is

component ARBITER_TOP
 port (
   INV_WRL : out std_logic;
   INV_WRU : out std_logic;
   INV_WRLL : out std_logic;
   INV_WRLM : out std_logic;
   INV_WRUM : out std_logic;
   INV_WRUU : out std_logic;
   PLDCLK : in std_logic;
   INV_MPU_DSACK1 : out std_logic;
   INV_AS : in std_logic;
   INV_SEL_1 : in std_logic;
   INV_MPU_DSACK0 : out std_logic;
   WAIT1 : in std_logic;
   INV_SEL_C : in std_logic;
   INV_IACK_AVEC : out std_logic;
   INV_CPU : out std_logic;
   INV_DS : in std_logic;
   INV_WR : out std_logic;
   R_W : in std_logic;
   INV_RD : out std_logic;
   A0 : in std_logic;
   SIZ1 : in std_logic;
   SIZ0 : in std_logic;
   A1 : in std_logic;
   INV_SEL_F : in std_logic;
   INV_FC2 : in std_logic;
   INV_FC1 : in std_logic;
   INV_FC0 : in std_logic;
   INV_SEL_4toB : in std_logic;
   WAIT2 : in std_logic;
   INV_SEL_0 : in std_logic
 );
end component;

signal tmp_INV_WRL : std_logic;
signal tmp_INV_WRU : std_logic;
signal tmp_INV_WRLL : std_logic;
signal tmp_INV_WRLM : std_logic;
signal tmp_INV_WRUM : std_logic;
signal tmp_INV_WRUU : std_logic;
signal tmp_PLDCLK : std_logic;
signal tmp_INV_MPU_DSACK1 : std_logic;
signal tmp_INV_AS : std_logic;
signal tmp_INV_SEL_1 : std_logic;
signal tmp_INV_MPU_DSACK0 : std_logic;
signal tmp_WAIT1 : std_logic;
signal tmp_INV_SEL_C : std_logic;
signal tmp_INV_IACK_AVEC : std_logic;
signal tmp_INV_CPU : std_logic;
signal tmp_INV_DS : std_logic;
signal tmp_INV_WR : std_logic;
signal tmp_R_W : std_logic;
signal tmp_INV_RD : std_logic;
signal tmp_A0 : std_logic;
signal tmp_SIZ1 : std_logic;
signal tmp_SIZ0 : std_logic;
signal tmp_A1 : std_logic;
signal tmp_INV_SEL_F : std_logic;
signal tmp_INV_FC2 : std_logic;
signal tmp_INV_FC1 : std_logic;
signal tmp_INV_FC0 : std_logic;
signal tmp_INV_SEL_4toB : std_logic;
signal tmp_WAIT2 : std_logic;
signal tmp_INV_SEL_0 : std_logic;

begin

INV_WRL <= tmp_INV_WRL;

INV_WRU <= tmp_INV_WRU;

INV_WRLL <= tmp_INV_WRLL;

INV_WRLM <= tmp_INV_WRLM;

INV_WRUM <= tmp_INV_WRUM;

INV_WRUU <= tmp_INV_WRUU;

tmp_PLDCLK <= PLDCLK;

INV_MPU_DSACK1 <= tmp_INV_MPU_DSACK1;

tmp_INV_AS <= INV_AS;

tmp_INV_SEL_1 <= INV_SEL_1;

INV_MPU_DSACK0 <= tmp_INV_MPU_DSACK0;

tmp_WAIT1 <= WAIT1;

tmp_INV_SEL_C <= INV_SEL_C;

INV_IACK_AVEC <= tmp_INV_IACK_AVEC;

INV_CPU <= tmp_INV_CPU;

tmp_INV_DS <= INV_DS;

INV_WR <= tmp_INV_WR;

tmp_R_W <= R_W;

INV_RD <= tmp_INV_RD;

tmp_A0 <= A0;

tmp_SIZ1 <= SIZ1;

tmp_SIZ0 <= SIZ0;

tmp_A1 <= A1;

tmp_INV_SEL_F <= INV_SEL_F;

tmp_INV_FC2 <= INV_FC2;

tmp_INV_FC1 <= INV_FC1;

tmp_INV_FC0 <= INV_FC0;

tmp_INV_SEL_4toB <= INV_SEL_4toB;

tmp_WAIT2 <= WAIT2;

tmp_INV_SEL_0 <= INV_SEL_0;



u1:   ARBITER_TOP port map (
		INV_WRL => tmp_INV_WRL,
		INV_WRU => tmp_INV_WRU,
		INV_WRLL => tmp_INV_WRLL,
		INV_WRLM => tmp_INV_WRLM,
		INV_WRUM => tmp_INV_WRUM,
		INV_WRUU => tmp_INV_WRUU,
		PLDCLK => tmp_PLDCLK,
		INV_MPU_DSACK1 => tmp_INV_MPU_DSACK1,
		INV_AS => tmp_INV_AS,
		INV_SEL_1 => tmp_INV_SEL_1,
		INV_MPU_DSACK0 => tmp_INV_MPU_DSACK0,
		WAIT1 => tmp_WAIT1,
		INV_SEL_C => tmp_INV_SEL_C,
		INV_IACK_AVEC => tmp_INV_IACK_AVEC,
		INV_CPU => tmp_INV_CPU,
		INV_DS => tmp_INV_DS,
		INV_WR => tmp_INV_WR,
		R_W => tmp_R_W,
		INV_RD => tmp_INV_RD,
		A0 => tmp_A0,
		SIZ1 => tmp_SIZ1,
		SIZ0 => tmp_SIZ0,
		A1 => tmp_A1,
		INV_SEL_F => tmp_INV_SEL_F,
		INV_FC2 => tmp_INV_FC2,
		INV_FC1 => tmp_INV_FC1,
		INV_FC0 => tmp_INV_FC0,
		INV_SEL_4toB => tmp_INV_SEL_4toB,
		WAIT2 => tmp_WAIT2,
		INV_SEL_0 => tmp_INV_SEL_0
       );
end schematic;
