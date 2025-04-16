-- VHDL model created from schematic arbiter_top.sch -- Jan 13 19:48:02 2025

library IEEE;
use IEEE.std_logic_1164.all;
library MACHXO2;
use MACHXO2.components.all;

entity ARBITER_TOP is
      Port ( INV_MPU_DSACK1 : Out   std_logic;
              INV_AS : In    std_logic;
             INV_SEL_1 : In    std_logic;
             INV_MPU_DSACK0 : Out   std_logic;
             INV_SEL_C : In    std_logic;
             INV_IACK_AVEC : Out   std_logic;
             INV_CPU : Out   std_logic;
             INV_SEL_F : In    std_logic;
             INV_FC2 : In    std_logic;
             INV_FC1 : In    std_logic;
             INV_FC0 : In    std_logic;
             INV_SEL_4toB : In    std_logic;
             INV_SEL_0 : In    std_logic;
              PLDCLK : In    std_logic;
             INV_WRUU : Out   std_logic;
             INV_WRUM : Out   std_logic;
             INV_WRLM : Out   std_logic;
             INV_WRLL : Out   std_logic;
             INV_WRU : Out   std_logic;
                  A0 : In    std_logic;
             INV_WRL : Out   std_logic;
                  A1 : In    std_logic;
                SIZ0 : In    std_logic;
                SIZ1 : In    std_logic;
              INV_DS : In    std_logic;
              INV_WR : Out   std_logic;
                 R_W : In    std_logic;
              INV_RD : Out   std_logic;
             INV_WAIT2 : In    std_logic;
             INV_WAIT1 : In    std_logic );

end ARBITER_TOP;

architecture SCHEMATIC of ARBITER_TOP is

   SIGNAL gnd : std_logic := '0';
   SIGNAL vcc : std_logic := '1';

   signal      LDS : std_logic;
   signal      UDS : std_logic;
   signal     LLDS : std_logic;
   signal     LMDS : std_logic;
   signal     UMDS : std_logic;
   signal     UUDS : std_logic;
   signal    N_179 : std_logic;
   signal    N_180 : std_logic;
   signal    N_181 : std_logic;
   signal    N_182 : std_logic;
   signal    N_183 : std_logic;
   signal    N_184 : std_logic;
   signal    N_185 : std_logic;
   signal    N_186 : std_logic;
   signal    N_187 : std_logic;
   signal    N_188 : std_logic;
   signal    N_189 : std_logic;
   signal    N_190 : std_logic;
   signal    N_191 : std_logic;
   signal    N_192 : std_logic;
   signal    N_193 : std_logic;
   signal    N_194 : std_logic;
   signal    N_195 : std_logic;
   signal    N_196 : std_logic;
   signal    N_197 : std_logic;
   signal    N_198 : std_logic;
   signal    N_199 : std_logic;
   signal    N_200 : std_logic;
   signal    N_201 : std_logic;
   signal    N_202 : std_logic;
   signal    N_203 : std_logic;
   signal    N_204 : std_logic;
   signal    N_205 : std_logic;
   signal    N_206 : std_logic;
   signal    N_207 : std_logic;
   signal    N_208 : std_logic;
   signal    N_209 : std_logic;
   signal    N_210 : std_logic;
   signal    N_211 : std_logic;
   signal    N_212 : std_logic;
   signal    N_213 : std_logic;
   signal    N_214 : std_logic;
   signal    N_215 : std_logic;
   signal    N_216 : std_logic;
   signal    N_217 : std_logic;
   signal    N_218 : std_logic;
   signal    N_219 : std_logic;
   signal    N_220 : std_logic;
   signal    N_221 : std_logic;
   signal    N_222 : std_logic;
   signal    N_223 : std_logic;
   signal    N_224 : std_logic;
   signal    N_225 : std_logic;
   signal    N_175 : std_logic;
   signal    N_177 : std_logic;
   signal    N_178 : std_logic;
   signal    N_169 : std_logic;
   signal    N_170 : std_logic;
   signal    N_171 : std_logic;
   signal    N_172 : std_logic;
   signal    N_164 : std_logic;
   signal    N_166 : std_logic;
   signal    N_168 : std_logic;
   signal    N_155 : std_logic;
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
   signal     N_56 : std_logic;
   signal     N_57 : std_logic;
   signal     N_64 : std_logic;
   signal     N_72 : std_logic;
   signal     N_75 : std_logic;
   signal I_PLDCLK : std_logic;

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

   I201 : nd3
      Port Map ( A=>N_154, B=>N_147, C=>N_150, Z=>N_151 );
   I231 : inv
      Port Map ( A=>N_206, Z=>N_222 );
   I232 : inv
      Port Map ( A=>N_201, Z=>N_217 );
   I233 : inv
      Port Map ( A=>N_208, Z=>N_205 );
   I234 : inv
      Port Map ( A=>N_212, Z=>N_225 );
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
   I240 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_224, Q=>N_223 );
   I241 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_214, Q=>N_213 );
   I242 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_186, Q=>N_185 );
   I243 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_194, Q=>N_193 );
   I244 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_203, Q=>N_202 );
   I167 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LMDS, Q=>N_199 );
   I168 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UMDS, Q=>N_211 );
   I169 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UUDS, Q=>N_221 );
   I170 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_220, Q=>N_182 );
   I171 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>N_180, Q=>N_218 );
   I172 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LDS, Q=>N_184 );
   I173 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>UDS, Q=>N_188 );
   I174 : fd1s1a
      Port Map ( CK=>I_PLDCLK, D=>LLDS, Q=>N_191 );
   I159 : and3
      Port Map ( A=>N_217, B=>N_222, C=>N_212, Z=>N_197 );
   I158 : and3
      Port Map ( A=>N_212, B=>N_201, C=>N_208, Z=>N_196 );
   I160 : and3
      Port Map ( A=>N_208, B=>N_201, C=>N_222, Z=>N_200 );
   I245 : and3
      Port Map ( A=>N_222, B=>N_217, C=>N_205, Z=>N_204 );
   I210 : and3
      Port Map ( A=>N_175, B=>N_178, C=>N_152, Z=>N_72 );
   I211 : and3
      Port Map ( A=>N_153, B=>N_177, C=>N_152, Z=>N_145 );
   I161 : nr2
      Port Map ( A=>N_202, B=>N_220, Z=>LMDS );
   I162 : nr2
      Port Map ( A=>N_213, B=>N_220, Z=>UMDS );
   I163 : nr2
      Port Map ( A=>N_223, B=>N_220, Z=>UUDS );
   I164 : nr2
      Port Map ( A=>N_212, B=>N_220, Z=>UDS );
   I165 : nr2
      Port Map ( A=>N_193, B=>N_220, Z=>LLDS );
   I166 : nr2
      Port Map ( A=>N_185, B=>N_220, Z=>LDS );
   I212 : nr2
      Port Map ( A=>N_145, B=>N_146, Z=>N_141 );
   I155 : nr4
      Port Map ( A=>N_196, B=>N_195, C=>N_192, D=>N_189, Z=>N_194 );
   I154 : nr4
      Port Map ( A=>N_207, B=>N_204, C=>N_200, D=>N_197, Z=>N_203 );
   I156 : nr3
      Port Map ( A=>N_217, B=>N_208, C=>N_212, Z=>N_186 );
   I157 : nr3
      Port Map ( A=>N_216, B=>N_215, C=>N_210, Z=>N_214 );
   I213 : nr3
      Port Map ( A=>N_72, B=>N_145, C=>N_146, Z=>N_144 );
   I151 : and2
      Port Map ( A=>N_222, B=>N_212, Z=>N_215 );
   I147 : and2
      Port Map ( A=>N_217, B=>N_205, Z=>N_195 );
   I146 : and2
      Port Map ( A=>N_212, B=>N_206, Z=>N_192 );
   I145 : and2
      Port Map ( A=>N_206, B=>N_208, Z=>N_189 );
   I149 : and2
      Port Map ( A=>N_225, B=>N_206, Z=>N_207 );
   I152 : and2
      Port Map ( A=>N_217, B=>N_222, Z=>N_216 );
   I150 : and2
      Port Map ( A=>N_208, B=>N_222, Z=>N_210 );
   I214 : and2
      Port Map ( A=>N_57, B=>N_152, Z=>N_146 );
   I175 : nd2
      Port Map ( A=>N_184, B=>N_218, Z=>N_183 );
   I176 : nd2
      Port Map ( A=>N_188, B=>N_218, Z=>N_187 );
   I177 : nd2
      Port Map ( A=>N_191, B=>N_218, Z=>N_190 );
   I178 : nd2
      Port Map ( A=>N_199, B=>N_218, Z=>N_198 );
   I179 : nd2
      Port Map ( A=>N_211, B=>N_218, Z=>N_209 );
   I180 : nd2
      Port Map ( A=>N_221, B=>N_218, Z=>N_219 );
   I181 : nd2
      Port Map ( A=>N_182, B=>N_218, Z=>N_181 );
   I182 : nd2
      Port Map ( A=>N_182, B=>N_218, Z=>N_179 );
   I153 : nd2
      Port Map ( A=>N_225, B=>N_222, Z=>N_224 );
   I215 : nd2
      Port Map ( A=>N_155, B=>N_64, Z=>N_175 );
   I183 : ob
      Port Map ( I=>N_219, O=>INV_WRUU );
   I184 : ob
      Port Map ( I=>N_209, O=>INV_WRUM );
   I138 : ob
      Port Map ( I=>N_198, O=>INV_WRLM );
   I143 : ob
      Port Map ( I=>N_190, O=>INV_WRLL );
   I142 : ob
      Port Map ( I=>N_187, O=>INV_WRU );
   I141 : ob
      Port Map ( I=>N_183, O=>INV_WRL );
   I140 : ob
      Port Map ( I=>N_181, O=>INV_WR );
   I139 : ob
      Port Map ( I=>N_179, O=>INV_RD );
   I219 : ob
      Port Map ( I=>N_169, O=>INV_CPU );
   I218 : ob
      Port Map ( I=>N_170, O=>INV_IACK_AVEC );
   I217 : ob
      Port Map ( I=>N_171, O=>INV_MPU_DSACK0 );
   I216 : ob
      Port Map ( I=>N_172, O=>INV_MPU_DSACK1 );
   I236 : ib
      Port Map ( I=>SIZ1, O=>N_208 );
   I237 : ib
      Port Map ( I=>SIZ0, O=>N_201 );
   I118 : ib
      Port Map ( I=>A1, O=>N_206 );
   I117 : ib
      Port Map ( I=>A0, O=>N_212 );
   I121 : ib
      Port Map ( I=>INV_DS, O=>N_220 );
   I122 : ib
      Port Map ( I=>R_W, O=>N_180 );
   I116 : ib
      Port Map ( I=>PLDCLK, O=>I_PLDCLK );
   I221 : ib
      Port Map ( I=>INV_WAIT2, O=>N_178 );
   I225 : ib
      Port Map ( I=>INV_SEL_0, O=>N_155 );
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
      Port Map ( I=>INV_WAIT1, O=>N_177 );
   I229 : ib
      Port Map ( I=>INV_SEL_1, O=>N_56 );
   I230 : ib
      Port Map ( I=>INV_AS, O=>N_75 );

end SCHEMATIC;
