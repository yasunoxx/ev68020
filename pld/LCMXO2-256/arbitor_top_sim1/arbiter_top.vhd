-- VHDL model created from schematic arbiter_top.sch -- Dec 05 02:41:27 2024

library IEEE;
use IEEE.std_logic_1164.all;
library MACHXO2;
use MACHXO2.components.all;

entity ARBITER_TOP is
      Port ( INV_WRL : Out   std_logic;
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
             INV_SEL_C : In    std_logic;
             INV_IACK_AVEC : Out   std_logic;
             INV_CPU : Out   std_logic;
              INV_DS : In    std_logic;
              INV_WR : Out   std_logic;
                 R_W : In    std_logic;
              INV_RD : Out   std_logic;
                  A0 : In    std_logic;
                SIZ1 : In    std_logic;
                SIZ0 : In    std_logic;
                  A1 : In    std_logic;
             INV_SEL_F : In    std_logic;
             INV_FC2 : In    std_logic;
             INV_FC1 : In    std_logic;
             INV_FC0 : In    std_logic;
             INV_SEL_4toB : In    std_logic;
               WAIT2 : In    std_logic;
             INV_SEL_0 : In    std_logic;
             INV_RESET : In    std_logic );

end ARBITER_TOP;

architecture SCHEMATIC of ARBITER_TOP is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal    N_173 : std_logic;
   signal    N_174 : std_logic;
   signal    N_169 : std_logic;
   signal    N_170 : std_logic;
   signal    N_171 : std_logic;
   signal    N_172 : std_logic;
   signal    N_164 : std_logic;
   signal    N_166 : std_logic;
   signal    N_168 : std_logic;
   signal    N_157 : std_logic;
   signal    N_158 : std_logic;
   signal    N_159 : std_logic;
   signal    N_161 : std_logic;
   signal    N_155 : std_logic;
   signal    N_156 : std_logic;
   signal    N_152 : std_logic;
   signal    N_153 : std_logic;
   signal    N_154 : std_logic;
   signal    N_147 : std_logic;
   signal    N_150 : std_logic;
   signal    N_151 : std_logic;
   signal    N_141 : std_logic;
   signal    N_144 : std_logic;
   signal    N_145 : std_logic;
   signal    N_146 : std_logic;
   signal    N_120 : std_logic;
   signal    N_121 : std_logic;
   signal    N_122 : std_logic;
   signal    N_123 : std_logic;
   signal    N_124 : std_logic;
   signal    N_125 : std_logic;
   signal    N_126 : std_logic;
   signal    N_127 : std_logic;
   signal    N_128 : std_logic;
   signal    N_129 : std_logic;
   signal    N_130 : std_logic;
   signal    N_131 : std_logic;
   signal    N_132 : std_logic;
   signal    N_133 : std_logic;
   signal    N_119 : std_logic;
   signal    N_112 : std_logic;
   signal    N_113 : std_logic;
   signal    N_116 : std_logic;
   signal    N_117 : std_logic;
   signal    N_118 : std_logic;
   signal     N_95 : std_logic;
   signal     N_96 : std_logic;
   signal     N_97 : std_logic;
   signal     N_98 : std_logic;
   signal     N_99 : std_logic;
   signal    N_100 : std_logic;
   signal    N_101 : std_logic;
   signal    N_102 : std_logic;
   signal    N_103 : std_logic;
   signal    N_106 : std_logic;
   signal    N_110 : std_logic;
   signal     N_91 : std_logic;
   signal     N_82 : std_logic;
   signal     N_85 : std_logic;
   signal     N_52 : std_logic;
   signal     N_56 : std_logic;
   signal     N_57 : std_logic;
   signal     N_64 : std_logic;
   signal     N_70 : std_logic;
   signal     N_72 : std_logic;
   signal     N_75 : std_logic;
   signal I_PLDCLK : std_logic;
   signal     UUDS : std_logic;
   signal     UMDS : std_logic;
   signal     LMDS : std_logic;
   signal     LLDS : std_logic;
   signal      UDS : std_logic;
   signal      LDS : std_logic;
   signal     N_29 : std_logic;
   signal     N_40 : std_logic;
   signal     N_45 : std_logic;

   component strtup
      Port (    UCLK : In    std_logic );
   end component;

   component nd3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component inv
      Port (       A : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component fd1s3ax
      Port (      CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
   end component;

   component or2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component fd1s1a
      Port (      CK : In    std_logic;
                   D : In    std_logic;
                   Q : Out   std_logic );
   end component;

   component and3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nr2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nr4
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   D : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nr3
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   C : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component and2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component nd2
      Port (       A : In    std_logic;
                   B : In    std_logic;
                   Z : Out   std_logic );
   end component;

   component ob
      Port (       I : In    std_logic;
                   O : Out   std_logic );
   end component;

   component ib
      Port (       I : In    std_logic;
                   O : Out   std_logic );
   end component;

begin

   I239 : strtup
      Port Map ( UCLK=>INV_RESET );
   I201 : nd3
      Port Map ( A=>N_154, B=>N_147, C=>N_150, Z=>N_151 );
   I231 : inv
      Port Map ( A=>N_158, Z=>N_159 );
   I232 : inv
      Port Map ( A=>N_157, Z=>N_174 );
   I233 : inv
      Port Map ( A=>N_173, Z=>N_161 );
   I234 : inv
      Port Map ( A=>N_106, Z=>N_29 );
   I202 : inv
      Port Map ( A=>N_56, Z=>N_57 );
   I204 : fd1s3ax
      Port Map ( CK=>I_PLDCLK, D=>N_151, Q=>N_169 );
   I203 : fd1s3ax
      Port Map ( CK=>I_PLDCLK, D=>N_164, Q=>N_170 );
   I205 : fd1s3ax
      Port Map ( CK=>I_PLDCLK, D=>N_166, Q=>N_171 );
   I206 : fd1s3ax
      Port Map ( CK=>I_PLDCLK, D=>N_168, Q=>N_172 );
   I207 : or2
      Port Map ( A=>N_151, B=>N_152, Z=>N_164 );
   I208 : or2
      Port Map ( A=>N_75, B=>N_141, Z=>N_168 );
   I209 : or2
      Port Map ( A=>N_144, B=>N_75, Z=>N_166 );
   I167 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LMDS, Q=>N_130 );
   I168 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UMDS, Q=>N_129 );
   I169 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UUDS, Q=>N_133 );
   I170 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_99, Q=>N_85 );
   I171 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_82, Q=>N_45 );
   I172 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LDS, Q=>N_128 );
   I173 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UDS, Q=>N_131 );
   I174 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LLDS, Q=>N_132 );
   I210 : and3
      Port Map ( A=>N_70, B=>N_156, C=>N_152, Z=>N_72 );
   I211 : and3
      Port Map ( A=>N_153, B=>N_52, C=>N_152, Z=>N_145 );
   I159 : and3
      Port Map ( A=>N_174, B=>N_159, C=>N_106, Z=>N_117 );
   I158 : and3
      Port Map ( A=>N_106, B=>N_157, C=>N_173, Z=>N_95 );
   I160 : and3
      Port Map ( A=>N_173, B=>N_157, C=>N_159, Z=>N_118 );
   I212 : nr2
      Port Map ( A=>N_145, B=>N_146, Z=>N_141 );
   I161 : nr2
      Port Map ( A=>N_96, B=>N_99, Z=>LMDS );
   I162 : nr2
      Port Map ( A=>N_98, B=>N_99, Z=>UMDS );
   I163 : nr2
      Port Map ( A=>N_100, B=>N_99, Z=>UUDS );
   I164 : nr2
      Port Map ( A=>N_106, B=>N_99, Z=>UDS );
   I165 : nr2
      Port Map ( A=>N_97, B=>N_99, Z=>LLDS );
   I166 : nr2
      Port Map ( A=>N_110, B=>N_99, Z=>LDS );
   I155 : nr4
      Port Map ( A=>N_95, B=>N_113, C=>N_40, D=>N_116, Z=>N_97 );
   I154 : nr4
      Port Map ( A=>N_102, B=>N_103, C=>N_118, D=>N_117, Z=>N_96 );
   I213 : nr3
      Port Map ( A=>N_72, B=>N_145, C=>N_146, Z=>N_144 );
   I156 : nr3
      Port Map ( A=>N_174, B=>N_173, C=>N_106, Z=>N_110 );
   I157 : nr3
      Port Map ( A=>N_101, B=>N_119, C=>N_91, Z=>N_98 );
   I214 : and2
      Port Map ( A=>N_57, B=>N_152, Z=>N_146 );
   I151 : and2
      Port Map ( A=>N_159, B=>N_106, Z=>N_119 );
   I147 : and2
      Port Map ( A=>N_174, B=>N_161, Z=>N_113 );
   I146 : and2
      Port Map ( A=>N_106, B=>N_158, Z=>N_40 );
   I145 : and2
      Port Map ( A=>N_158, B=>N_173, Z=>N_116 );
   I149 : and2
      Port Map ( A=>N_29, B=>N_158, Z=>N_102 );
   I148 : and2
      Port Map ( A=>N_112, B=>N_161, Z=>N_103 );
   I144 : and2
      Port Map ( A=>N_159, B=>N_174, Z=>N_112 );
   I152 : and2
      Port Map ( A=>N_174, B=>N_159, Z=>N_101 );
   I150 : and2
      Port Map ( A=>N_173, B=>N_159, Z=>N_91 );
   I215 : nd2
      Port Map ( A=>N_155, B=>N_64, Z=>N_70 );
   I175 : nd2
      Port Map ( A=>N_128, B=>N_45, Z=>N_125 );
   I176 : nd2
      Port Map ( A=>N_131, B=>N_45, Z=>N_124 );
   I177 : nd2
      Port Map ( A=>N_132, B=>N_45, Z=>N_123 );
   I178 : nd2
      Port Map ( A=>N_130, B=>N_45, Z=>N_122 );
   I179 : nd2
      Port Map ( A=>N_129, B=>N_45, Z=>N_121 );
   I180 : nd2
      Port Map ( A=>N_133, B=>N_45, Z=>N_120 );
   I181 : nd2
      Port Map ( A=>N_85, B=>N_45, Z=>N_126 );
   I182 : nd2
      Port Map ( A=>N_85, B=>N_45, Z=>N_127 );
   I153 : nd2
      Port Map ( A=>N_29, B=>N_159, Z=>N_100 );
   I219 : ob
      Port Map ( I=>N_169, O=>INV_CPU );
   I218 : ob
      Port Map ( I=>N_170, O=>INV_IACK_AVEC );
   I217 : ob
      Port Map ( I=>N_171, O=>INV_MPU_DSACK0 );
   I216 : ob
      Port Map ( I=>N_172, O=>INV_MPU_DSACK1 );
   I183 : ob
      Port Map ( I=>N_120, O=>INV_WRUU );
   I184 : ob
      Port Map ( I=>N_121, O=>INV_WRUM );
   I138 : ob
      Port Map ( I=>N_122, O=>INV_WRLM );
   I143 : ob
      Port Map ( I=>N_123, O=>INV_WRLL );
   I142 : ob
      Port Map ( I=>N_124, O=>INV_WRU );
   I141 : ob
      Port Map ( I=>N_125, O=>INV_WRL );
   I140 : ob
      Port Map ( I=>N_126, O=>INV_WR );
   I139 : ob
      Port Map ( I=>N_127, O=>INV_RD );
   I236 : ib
      Port Map ( I=>SIZ1, O=>N_173 );
   I237 : ib
      Port Map ( I=>SIZ0, O=>N_157 );
   I225 : ib
      Port Map ( I=>INV_SEL_0, O=>N_155 );
   I221 : ib
      Port Map ( I=>WAIT2, O=>N_156 );
   I227 : ib
      Port Map ( I=>INV_SEL_4toB, O=>N_153 );
   I220 : ib
      Port Map ( I=>INV_FC0, O=>N_154 );
   I222 : ib
      Port Map ( I=>INV_FC2, O=>N_150 );
   I223 : ib
      Port Map ( I=>INV_FC1, O=>N_147 );
   I224 : ib
      Port Map ( I=>INV_SEL_F, O=>N_152 );
   I226 : ib
      Port Map ( I=>INV_SEL_C, O=>N_64 );
   I228 : ib
      Port Map ( I=>WAIT1, O=>N_52 );
   I229 : ib
      Port Map ( I=>INV_SEL_1, O=>N_56 );
   I230 : ib
      Port Map ( I=>INV_AS, O=>N_75 );
   I118 : ib
      Port Map ( I=>A1, O=>N_158 );
   I117 : ib
      Port Map ( I=>A0, O=>N_106 );
   I121 : ib
      Port Map ( I=>INV_DS, O=>N_99 );
   I122 : ib
      Port Map ( I=>R_W, O=>N_82 );
   I116 : ib
      Port Map ( I=>PLDCLK, O=>I_PLDCLK );

end SCHEMATIC;
