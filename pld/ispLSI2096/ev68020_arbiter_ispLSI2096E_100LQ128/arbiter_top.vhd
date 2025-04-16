-- VHDL model created from schematic arbiter_top.sch -- Nov 09 05:35:55 2024

LIBRARY ieee;
LIBRARY generics;
LIBRARY lat_vhd;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE generics.components.ALL;
USE lat_vhd.components.ALL;

entity ARBITER_TOP is
      Port (  INV_RD : Out   std_logic;
                 R_W : In    std_logic;
              INV_WR : Out   std_logic;
              INV_DS : In    std_logic;
                SIZ1 : In    std_logic;
                SIZ0 : In    std_logic;
                  A1 : In    std_logic;
             INV_WRL : Out   std_logic;
                  A0 : In    std_logic;
             INV_WRU : Out   std_logic;
             INV_WRLL : Out   std_logic;
             INV_WRLM : Out   std_logic;
             INV_WRUM : Out   std_logic;
             INV_WRUU : Out   std_logic;
              PLDCLK : In    std_logic;
             INV_MPU_DSACK1 : Out   std_logic;
              INV_AS : In    std_logic;
             INV_SEL_1 : In    std_logic;
             INV_MPU_DSACK0 : Out   std_logic;
               WAIT1 : In    std_logic;
             INV_SEL_8toB : In    std_logic;
             INV_SEL_4to7 : In    std_logic;
               WAIT2 : In    std_logic;
             INV_SEL_C : In    std_logic;
             INV_SEL_0 : In    std_logic;
             INV_SEL_F : In    std_logic;
             INV_IACK_AVEC : Out   std_logic;
             INV_FC2 : In    std_logic;
             INV_FC1 : In    std_logic;
             INV_FC0 : In    std_logic;
             INV_CPU : Out   std_logic );
end ARBITER_TOP;

architecture SCHEMATIC of ARBITER_TOP is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal     N_47 : std_logic;
   signal     N_48 : std_logic;
   signal     N_49 : std_logic;
   signal     N_50 : std_logic;
   signal     N_51 : std_logic;
   signal     N_52 : std_logic;
   signal     N_53 : std_logic;
   signal     N_54 : std_logic;
   signal     N_55 : std_logic;
   signal     N_56 : std_logic;
   signal     N_57 : std_logic;
   signal     N_58 : std_logic;
   signal     N_59 : std_logic;
   signal     N_60 : std_logic;
   signal     N_61 : std_logic;
   signal     N_62 : std_logic;
   signal     N_63 : std_logic;
   signal     N_64 : std_logic;
   signal     N_65 : std_logic;
   signal     N_66 : std_logic;
   signal     N_67 : std_logic;
   signal     N_68 : std_logic;
   signal     N_69 : std_logic;
   signal     N_70 : std_logic;
   signal     N_71 : std_logic;
   signal     N_72 : std_logic;
   signal     N_73 : std_logic;
   signal     N_74 : std_logic;
   signal     N_75 : std_logic;
   signal I_PLDCLK : std_logic;
   signal     UUDS : std_logic;
   signal     UMDS : std_logic;
   signal     LMDS : std_logic;
   signal     LLDS : std_logic;
   signal      UDS : std_logic;
   signal      LDS : std_logic;
   signal      N_1 : std_logic;
   signal      N_2 : std_logic;
   signal      N_3 : std_logic;
   signal      N_4 : std_logic;
   signal      N_5 : std_logic;
   signal      N_6 : std_logic;
   signal      N_7 : std_logic;
   signal      N_8 : std_logic;
   signal      N_9 : std_logic;
   signal     N_10 : std_logic;
   signal     N_11 : std_logic;
   signal     N_12 : std_logic;
   signal     N_13 : std_logic;
   signal     N_14 : std_logic;
   signal     N_15 : std_logic;
   signal     N_16 : std_logic;
   signal     N_17 : std_logic;
   signal     N_18 : std_logic;
   signal     N_19 : std_logic;
   signal     N_20 : std_logic;
   signal     N_21 : std_logic;
   signal     N_22 : std_logic;
   signal     N_23 : std_logic;
   signal     N_24 : std_logic;
   signal     N_25 : std_logic;
   signal     N_26 : std_logic;
   signal     N_27 : std_logic;
   signal     N_28 : std_logic;
   signal     N_29 : std_logic;
   signal     N_30 : std_logic;
   signal     N_31 : std_logic;
   signal     N_32 : std_logic;
   signal     N_33 : std_logic;
   signal     N_34 : std_logic;
   signal     N_35 : std_logic;
   signal     N_36 : std_logic;
   signal     N_37 : std_logic;
   signal     N_38 : std_logic;
   signal     N_39 : std_logic;
   signal     N_40 : std_logic;
   signal     N_41 : std_logic;
   signal     N_42 : std_logic;
   signal     N_44 : std_logic;
   signal     N_45 : std_logic;
   signal     N_46 : std_logic;

   component IB11
      Port (     XI0 : In    std_logic;
                  Z0 : Out   std_logic );
   end component;

   component FD11
      Port (     CLK : In    std_logic;
                  D0 : In    std_logic;
                  Q0 : Out   std_logic );
   end component;

begin

   I84 : IB11
      Port Map ( XI0=>N_49, Z0=>N_50 );
   I105 : G_2OR
      Port Map ( A=>N_60, B=>N_75, Y=>N_58 );
   I106 : G_2OR
      Port Map ( A=>N_75, B=>N_53, Y=>N_54 );
   I85 : G_2OR
      Port Map ( A=>N_68, B=>N_67, Y=>N_71 );
   I86 : G_3NAND
      Port Map ( A=>N_62, B=>N_48, C=>N_61, YN=>N_67 );
   I74 : G_CLKBUF
      Port Map ( I=>PLDCLK, O=>I_PLDCLK );
   I107 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_71, Q0=>N_49 );
   I108 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_67, Q0=>N_47 );
   I109 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_58, Q0=>N_59 );
   I110 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_54, Q0=>N_55 );
   I66 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_23, Q0=>N_44 );
   I67 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>N_42, Q0=>N_21 );
   I68 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>LMDS, Q0=>N_10 );
   I69 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>UUDS, Q0=>N_2 );
   I70 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>UMDS, Q0=>N_6 );
   I71 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>LLDS, Q0=>N_14 );
   I72 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>LDS, Q0=>N_19 );
   I73 : FD11
      Port Map ( CLK=>I_PLDCLK, D0=>UDS, Q0=>N_16 );
   I112 : G_OUTPUT
      Port Map ( I=>N_59, O=>INV_MPU_DSACK1 );
   I113 : G_OUTPUT
      Port Map ( I=>N_55, O=>INV_MPU_DSACK0 );
   I77 : G_OUTPUT
      Port Map ( I=>N_47, O=>INV_CPU );
   I75 : G_OUTPUT
      Port Map ( I=>N_50, O=>INV_IACK_AVEC );
   I59 : G_OUTPUT
      Port Map ( I=>N_24, O=>INV_RD );
   I57 : G_OUTPUT
      Port Map ( I=>N_20, O=>INV_WRL );
   I53 : G_OUTPUT
      Port Map ( I=>N_7, O=>INV_WRUM );
   I54 : G_OUTPUT
      Port Map ( I=>N_11, O=>INV_WRLM );
   I55 : G_OUTPUT
      Port Map ( I=>N_15, O=>INV_WRLL );
   I56 : G_OUTPUT
      Port Map ( I=>N_17, O=>INV_WRU );
   I58 : G_OUTPUT
      Port Map ( I=>N_22, O=>INV_WR );
   I52 : G_OUTPUT
      Port Map ( I=>N_3, O=>INV_WRUU );
   I101 : G_INPUT
      Port Map ( I=>INV_AS, O=>N_75 );
   I89 : G_INPUT
      Port Map ( I=>INV_SEL_1, O=>N_56 );
   I90 : G_INPUT
      Port Map ( I=>WAIT1, O=>N_52 );
   I91 : G_INPUT
      Port Map ( I=>INV_SEL_8toB, O=>N_66 );
   I92 : G_INPUT
      Port Map ( I=>INV_SEL_4to7, O=>N_65 );
   I93 : G_INPUT
      Port Map ( I=>WAIT2, O=>N_51 );
   I94 : G_INPUT
      Port Map ( I=>INV_SEL_C, O=>N_64 );
   I95 : G_INPUT
      Port Map ( I=>INV_SEL_0, O=>N_63 );
   I79 : G_INPUT
      Port Map ( I=>INV_FC2, O=>N_62 );
   I80 : G_INPUT
      Port Map ( I=>INV_FC1, O=>N_48 );
   I81 : G_INPUT
      Port Map ( I=>INV_FC0, O=>N_61 );
   I78 : G_INPUT
      Port Map ( I=>INV_SEL_F, O=>N_68 );
   I61 : G_INPUT
      Port Map ( I=>INV_DS, O=>N_42 );
   I60 : G_INPUT
      Port Map ( I=>R_W, O=>N_23 );
   I65 : G_INPUT
      Port Map ( I=>A0, O=>N_25 );
   I62 : G_INPUT
      Port Map ( I=>SIZ1, O=>N_28 );
   I63 : G_INPUT
      Port Map ( I=>SIZ0, O=>N_27 );
   I64 : G_INPUT
      Port Map ( I=>A1, O=>N_26 );
   I114 : G_2NOR
      Port Map ( A=>N_73, B=>N_74, YN=>N_60 );
   I33 : G_2NOR
      Port Map ( A=>N_42, B=>N_1, YN=>UUDS );
   I34 : G_2NOR
      Port Map ( A=>N_42, B=>N_18, YN=>LDS );
   I35 : G_2NOR
      Port Map ( A=>N_42, B=>N_25, YN=>UDS );
   I36 : G_2NOR
      Port Map ( A=>N_42, B=>N_13, YN=>LLDS );
   I37 : G_2NOR
      Port Map ( A=>N_42, B=>N_8, YN=>LMDS );
   I38 : G_2NOR
      Port Map ( A=>N_42, B=>N_5, YN=>UMDS );
   I115 : G_3NOR
      Port Map ( A=>N_73, B=>N_74, C=>N_72, YN=>N_53 );
   I32 : G_3NOR
      Port Map ( A=>N_25, B=>N_28, C=>N_31, YN=>N_18 );
   I12 : G_3NOR
      Port Map ( A=>N_36, B=>N_4, C=>N_35, YN=>N_5 );
   I13 : G_4NOR
      Port Map ( A=>N_41, B=>N_40, C=>N_12, D=>N_39, YN=>N_13 );
   I14 : G_4NOR
      Port Map ( A=>N_38, B=>N_9, C=>N_37, D=>N_34, YN=>N_8 );
   I102 : G_3AND
      Port Map ( A=>N_71, B=>N_51, C=>N_70, Y=>N_72 );
   I103 : G_3AND
      Port Map ( A=>N_71, B=>N_52, C=>N_69, Y=>N_74 );
   I15 : G_3AND
      Port Map ( A=>N_28, B=>N_27, C=>N_25, Y=>N_39 );
   I16 : G_3AND
      Port Map ( A=>N_25, B=>N_30, C=>N_31, Y=>N_38 );
   I17 : G_3AND
      Port Map ( A=>N_30, B=>N_27, C=>N_28, Y=>N_9 );
   I96 : G_INV
      Port Map ( A=>N_56, YN=>N_57 );
   I2 : G_INV
      Port Map ( A=>N_44, YN=>N_45 );
   I1 : G_INV
      Port Map ( A=>N_21, YN=>N_46 );
   I28 : G_INV
      Port Map ( A=>N_28, YN=>N_32 );
   I29 : G_INV
      Port Map ( A=>N_27, YN=>N_31 );
   I30 : G_INV
      Port Map ( A=>N_26, YN=>N_30 );
   I31 : G_INV
      Port Map ( A=>N_25, YN=>N_29 );
   I98 : G_2NAND
      Port Map ( A=>N_64, B=>N_63, YN=>N_70 );
   I99 : G_2NAND
      Port Map ( A=>N_66, B=>N_65, YN=>N_69 );
   I3 : G_2NAND
      Port Map ( A=>N_44, B=>N_46, YN=>N_24 );
   I5 : G_2NAND
      Port Map ( A=>N_45, B=>N_19, YN=>N_20 );
   I9 : G_2NAND
      Port Map ( A=>N_45, B=>N_6, YN=>N_7 );
   I8 : G_2NAND
      Port Map ( A=>N_45, B=>N_10, YN=>N_11 );
   I7 : G_2NAND
      Port Map ( A=>N_45, B=>N_14, YN=>N_15 );
   I6 : G_2NAND
      Port Map ( A=>N_45, B=>N_16, YN=>N_17 );
   I4 : G_2NAND
      Port Map ( A=>N_45, B=>N_46, YN=>N_22 );
   I10 : G_2NAND
      Port Map ( A=>N_45, B=>N_2, YN=>N_3 );
   I18 : G_2NAND
      Port Map ( A=>N_30, B=>N_29, YN=>N_1 );
   I104 : G_2AND
      Port Map ( A=>N_71, B=>N_57, Y=>N_73 );
   I25 : G_2AND
      Port Map ( A=>N_28, B=>N_26, Y=>N_41 );
   I19 : G_2AND
      Port Map ( A=>N_30, B=>N_31, Y=>N_35 );
   I20 : G_2AND
      Port Map ( A=>N_31, B=>N_30, Y=>N_33 );
   I21 : G_2AND
      Port Map ( A=>N_26, B=>N_29, Y=>N_34 );
   I22 : G_2AND
      Port Map ( A=>N_30, B=>N_28, Y=>N_36 );
   I23 : G_2AND
      Port Map ( A=>N_32, B=>N_31, Y=>N_12 );
   I24 : G_2AND
      Port Map ( A=>N_25, B=>N_30, Y=>N_4 );
   I26 : G_2AND
      Port Map ( A=>N_26, B=>N_25, Y=>N_40 );
   I27 : G_2AND
      Port Map ( A=>N_32, B=>N_33, Y=>N_37 );

end SCHEMATIC;
