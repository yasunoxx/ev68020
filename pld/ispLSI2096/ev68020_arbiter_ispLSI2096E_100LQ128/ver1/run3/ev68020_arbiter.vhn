-- VHDL netlist for ARBITER_TOP
-- Date: Sun Nov 10 21:06:26 2024
-- Copyright (c) Lattice Semiconductor Corporation
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND2_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND2_ARBITER_TOP;

ARCHITECTURE behav OF PGAND2_ARBITER_TOP IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGBUFI_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGBUFI_ARBITER_TOP;

ARCHITECTURE behav OF PGBUFI_ARBITER_TOP IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGXOR2_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGXOR2_ARBITER_TOP;

ARCHITECTURE behav OF PGXOR2_ARBITER_TOP IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 XOR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGINVI_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        ZN0 : OUT std_logic
    );
END PGINVI_ARBITER_TOP;

ARCHITECTURE behav OF PGINVI_ARBITER_TOP IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := NOT A0;
        if ZDF ='1' then
            ZN0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            ZN0 <= transport ZDF after TFALL;
        else
            ZN0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGDFFR_ARBITER_TOP IS 
    GENERIC (
        HLCQ : TIME := 1 ns;
        LHCQ : TIME := 1 ns;
        HLRQ : TIME := 1 ns;
        SUD0 : TIME := 0 ns;
        SUD1 : TIME := 0 ns;
        HOLDD0 : TIME := 0 ns;
        HOLDD1 : TIME := 0 ns;
        POSC1 : TIME := 0 ns;
        POSC0 : TIME := 0 ns;
        NEGC1 : TIME := 0 ns;
        NEGC0 : TIME := 0 ns;
        RECRC : TIME := 0 ns;
        HOLDRC : TIME := 0 ns
    );
    PORT (
        RNESET : IN std_logic;
        CD : IN std_logic;
        CLK : IN std_logic;
        D0 : IN std_logic;
        Q0 : OUT std_logic
    );
END PGDFFR_ARBITER_TOP;

ARCHITECTURE behav OF PGDFFR_ARBITER_TOP IS 
BEGIN

    PROCESS (RNESET, CD, CLK, D0)
	variable iQ0 : std_logic;
	variable pQ0 : std_logic;

	begin

		if (CD OR NOT (RNESET)) = '1' then
			if NOT (iQ0='0') then
			  iQ0 := '0';
			  Q0 <= transport iQ0  after HLRQ;
			end if;
		elsif (CD OR NOT (RNESET)) = '0' AND CLK= '1' AND CLK'EVENT then
			pQ0 := iQ0;
			if (D0'EVENT) then
				iQ0 := D0'LAST_VALUE;
			elsif NOT (D0'EVENT) then
				iQ0 := D0;
			end if;
      if pQ0 = iQ0 then 
         Q0 <= transport iQ0;
      elsif iQ0 = '1' then Q0 <= transport iQ0 after LHCQ;
      elsif iQ0 = '0' then Q0 <= transport iQ0 after HLCQ;
      else
          Q0 <= transport iQ0;
      end if;
		end if;
    END PROCESS;

	process(CLK, CD)
	 begin
		if CD'EVENT AND CD='0' AND CLK='1' then
			assert (CLK'LAST_EVENT >= HOLDRC) 
			report("HOLD TIME VIOLAION ON CD (HOLDRC)  ")
            severity WARNING;
		end if;
		if CLK'EVENT  AND CLK ='1' AND CD ='0' then
			assert ( CD'LAST_EVENT >= RECRC) 
			report("RECOVERY TIME VIOLATION on CD(RECRC) ")
            severity WARNING;
		end if;
	end process;

	process(CLK,RNESET)
	 begin
		if RNESET'EVENT AND NOT(RNESET)='0' AND CLK='1' then
			assert (CLK'LAST_EVENT >= HOLDRC) 
			report("HOLD TIME VIOLAION ON RNESET (HOLDRC)  ")
            severity WARNING;
		end if;
		if CLK'EVENT  AND CLK ='1' AND NOT(RNESET) ='0' then
			assert ( RNESET'LAST_EVENT >= RECRC) 
			report("RECOVERY TIME VIOLATION on RNESET(RECRC) ")
            severity WARNING;
		end if;
	end process;

	process(D0, CLK)

	variable R_EDGE1 : TIME := 0 ns;
	variable R_EDGE0 : TIME := 0 ns;
	variable F_EDGE1 : TIME := 0 ns;
	variable F_EDGE0 : TIME := 0 ns;

	begin
		if CLK='1' AND CLK'LAST_VALUE='0' AND NOT(D0'EVENT) then
		   if D0='1' then
			R_EDGE1 := NOW;
			assert((R_EDGE1-F_EDGE1) >= NEGC1) 
			report("NEGATIVE PULSE WIDTH VIOLATION (NEGC1) ON CLK at ")
            severity WARNING;
			elsif D0='0' then
			 R_EDGE0 := NOW;
			 assert((R_EDGE0-F_EDGE0) >= NEGC0) 
			 report("NEGATIVE PULSE WIDTH VIOLATION (NEGC0) ON CLK at ")
             severity WARNING;
			end if;
		end if;

		if CLK ='0' AND CLK'LAST_VALUE = '1' AND NOT(D0'EVENT) then
			if D0='1' then
			  F_EDGE1 := NOW;
			  assert ((F_EDGE1-R_EDGE1) >= POSC1) 
			  report("POSITIVE PULSE WIDTH VIOLATION (POSC1) ON CLK at ")
              severity WARNING;
			elsif D0='0' then
			  F_EDGE0 := NOW;
			  assert ((F_EDGE0-R_EDGE0) >= POSC0) 
			  report("POSITIVE PULSE WIDTH VIOLATION (POSC0) ON CLK at ")
              severity WARNING;
			end if;
		end if;

	end process;

	process(D0, CLK)

	begin
		if CLK = '1' AND CLK'EVENT then 
			if D0='1' then
               assert(D0'LAST_EVENT >= SUD1) 
 			   report("DATA SET-UP VIOLATION (SUD1) ")
               severity WARNING;
			elsif D0='0' then
               assert(D0'LAST_EVENT >= SUD0) 
 			   report("DATA SET-UP VIOLATION (SUD0) ")
               severity WARNING;
			end if;
		end if;

		if CLK='1' AND D0'EVENT then 
			if D0'LAST_VALUE ='1' then
			   assert(CLK'LAST_EVENT >= HOLDD1)
			   report("DATA HOLD VIOLATION (HOLDD1) ")
               severity WARNING;
			elsif D0'LAST_VALUE='0' then
			   assert(CLK'LAST_EVENT >= HOLDD0)
			   report("DATA HOLD VIOLATION (HOLDD0) ")
               severity WARNING;
			end if;
		end if;

	end process;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND3_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND3_ARBITER_TOP;

ARCHITECTURE behav OF PGAND3_ARBITER_TOP IS 
BEGIN

    PROCESS (A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A2 AND A1 AND A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGORF72_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF72_ARBITER_TOP;

ARCHITECTURE behav OF PGORF72_ARBITER_TOP IS 
BEGIN

    PROCESS (A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A1 OR A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PGAND4_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND4_ARBITER_TOP;

ARCHITECTURE behav OF PGAND4_ARBITER_TOP IS 
BEGIN

    PROCESS (A3, A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A3 AND A2 AND A1 AND 
            A0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PXIN_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        XI0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PXIN_ARBITER_TOP;

ARCHITECTURE behav OF PXIN_ARBITER_TOP IS 
BEGIN

    PROCESS (XI0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  XI0;
        if ZDF ='1' then
            Z0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            Z0 <= transport ZDF after TFALL;
        else
            Z0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY PXOUT_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A0 : IN std_logic;
        XO0 : OUT std_logic
    );
END PXOUT_ARBITER_TOP;

ARCHITECTURE behav OF PXOUT_ARBITER_TOP IS 
BEGIN

    PROCESS (A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF :=  A0;
        if ZDF ='1' then
            XO0 <= transport ZDF after TRISE;
        elsif ZDF ='0' then
            XO0 <= transport ZDF after TFALL;
        else
            XO0 <= transport ZDF;
        end if;
    END PROCESS;
END behav;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE work.all;

ENTITY ARBITER_TOP IS 
    PORT (
        XRESET : IN std_logic;
        WAIT2 : IN std_logic;
        WAIT1 : IN std_logic;
        SIZ1 : IN std_logic;
        SIZ0 : IN std_logic;
        R_W : IN std_logic;
        PLDCLK : IN std_logic;
        INV_SEL_F : IN std_logic;
        INV_SEL_C : IN std_logic;
        INV_SEL_8TOB : IN std_logic;
        INV_SEL_4TO7 : IN std_logic;
        INV_SEL_1 : IN std_logic;
        INV_SEL_0 : IN std_logic;
        INV_FC2 : IN std_logic;
        INV_FC1 : IN std_logic;
        INV_FC0 : IN std_logic;
        INV_DS : IN std_logic;
        INV_AS : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        INV_WRUU : OUT std_logic;
        INV_WRUM : OUT std_logic;
        INV_WRU : OUT std_logic;
        INV_WRLM : OUT std_logic;
        INV_WRLL : OUT std_logic;
        INV_WRL : OUT std_logic;
        INV_WR : OUT std_logic;
        INV_RD : OUT std_logic;
        INV_MPU_DSACK1 : OUT std_logic;
        INV_MPU_DSACK0 : OUT std_logic;
        INV_IACK_AVEC : OUT std_logic;
        INV_CPU : OUT std_logic
    );
END ARBITER_TOP;


ARCHITECTURE ARBITER_TOP_STRUCTURE OF ARBITER_TOP IS
SIGNAL VCC : std_logic := '1';
SIGNAL GND : std_logic := '0';
SIGNAL  N_44_grpi, N_2_grpi, N_14_grpi, N_10_grpi,
	 N_6_grpi, N_21_grpi, N_19_grpi, N_16_grpi,
	 OR_752_grpi, AND_751_grpi, OR_806_grpi, OR_802_grpi,
	 AND_760_grpi, OR_762_grpi, L2L_KEYWD_RESETb, IO29_IBUFO,
	 IO28_IBUFO, IO9_IBUFO, IO8_IBUFO, IO11_IBUFO,
	 PLDCLKX, IO35_IBUFO, IO31_IBUFO, IO34_IBUFO,
	 IO33_IBUFO, IO32_IBUFO, IO30_IBUFO, IO26_IBUFO,
	 IO25_IBUFO, IO24_IBUFO, IO10_IBUFO, INV_ASX,
	 IO7_IBUFO, IO6_IBUFO, IO12_OBUFI, AND_814_iomux,
	 IO13_OBUFI, AND_813_iomux, IO16_OBUFI, AND_812_iomux,
	 IO14_OBUFI, AND_811_iomux, IO15_OBUFI, AND_810_iomux,
	 IO17_OBUFI, AND_809_iomux, IO18_OBUFI, AND_808_iomux,
	 IO19_OBUFI, AND_807_iomux, IO39_OBUFI, N_59_iomux,
	 IO38_OBUFI, N_55_iomux, IO37_OBUFI, N_49_iomux,
	 IO36_OBUFI, N_47_iomux, A0_P0_xa, AND_810,
	 A0_X3O, A0_P13_xa, AND_814, A0_X0O,
	 A0_G3, A0_G0, A0_P13, A0_IN0,
	 A0_P0, A0_IN3B, A0_IN9, N_44,
	 A2_CLK, A2_P13_xa, A2_X0O, A2_G3,
	 R_WX_grp, A2_P13, A2_IN0, A3_P4_xa,
	 AND_811, A3_X2O, A3_P8_xa, AND_813,
	 A3_X1O, A3_G2, A3_G1, A3_P8,
	 A3_IN4, A3_P4, A3_IN1, A3_IN3B,
	 A6_P0_xa, AND_807, A6_X3O, A6_P4_xa,
	 AND_808, A6_X2O, A6_G1, A6_G0,
	 A6_P4, A6_IN3B, A6_P0, A6_IN3,
	 A6_IN8B, A7_P8_xa, AND_809, A7_X1O,
	 A7_P13_xa, AND_812, A7_X0O, A7_G3,
	 A7_G2, A7_P13, A7_IN4, A7_P8,
	 A7_IN3B, A7_IN5, OR_752, WAIT1X_grp,
	 B0_P16, B0_IN8B, INV_SEL_8TOBX_grp, INV_SEL_4TO7X_grp,
	 INV_SEL_1X_grp, B0_P15, B0_IN0, B0_IN1,
	 B0_IN2, N_49, N_47, B1_CLK,
	 B1_P8_xa, B1_X1O, B1_P13_xa, B1_X0O,
	 B1_G3, B1_G2, B1_F0, B1_P13,
	 B1_P8, B1_IN0B, B1_P3, B1_IN1,
	 B1_IN2, B1_IN3, N_59, N_55,
	 B2_CLK, B2_P0_xa, B2_X3O, B2_P4_xa,
	 B2_X2O, B2_G1, B2_G0, B2_F1,
	 B2_F0, B2_P7, B2_P4, B2_P3,
	 B2_IN3, INV_ASX_dir, B2_P2, B2_IN0B,
	 B2_IN4B, B2_IN16B, B2_P0, N_10,
	 N_2, B4_CLK, B4_P13_xa, B4_X0O,
	 B4_G3, B4_F2, B4_P13, B4_P11,
	 B4_IN8, B4_IN9B, B4_P10, B4_IN7B,
	 B4_IN8B, B4_IN14B, N_16, B5_CLK,
	 B5_P8_xa, AND_760, B5_X1O, B5_P13_xa,
	 B5_X0O, B5_G3, B5_G2, B5_P13,
	 B5_IN14B, B5_P8, B5_IN9B, B5_IN13B,
	 OR_806, INV_SEL_0X_grp, B6_P16, B6_IN5B,
	 WAIT2X_grp, INV_SEL_CX_grp, B6_P15, B6_IN4B,
	 B6_IN6, B6_IN15B, N_14, N_21,
	 B7_CLK, B7_P13_xa, B7_X0O, B7_G3,
	 B7_F2, B7_P13, B7_IN14, B7_P11,
	 B7_IN6, B7_P10, B7_IN8, B7_IN10B,
	 B7_IN14B, N_19, N_6, L2L_KEYWD_RESET_glbb,
	 C1_CLK, PLDCLKX_clk0, C1_F3, C1_F2,
	 C1_P16, A1X_grp, C1_P15, C1_IN8B,
	 C1_P11, C1_IN12B, INV_DSX_grp, C1_P10,
	 C1_IN10B, C1_IN14B, C4_P13_xa, AND_751,
	 C4_X0O, C4_G3, INV_FC2X_grp, INV_FC1X_grp,
	 INV_FC0X_grp, INV_SEL_FX_grp, C4_P13, C4_IN8B,
	 C4_IN12, C4_IN13, C4_IN14, OR_802,
	 OR_762, C7_P16, C7_P15, C7_IN9B,
	 C7_P11, C7_IN12B, C7_IN13B, SIZ1X_grp,
	 SIZ0X_grp, A0X_grp, C7_P10, C7_IN9,
	 C7_IN12, C7_IN13 : std_logic;


  COMPONENT PGAND2_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND2_ARBITER_TOP use entity work.PGAND2_ARBITER_TOP(behav);

  COMPONENT PGBUFI_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGBUFI_ARBITER_TOP use entity work.PGBUFI_ARBITER_TOP(behav);

  COMPONENT PGXOR2_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGXOR2_ARBITER_TOP use entity work.PGXOR2_ARBITER_TOP(behav);

  COMPONENT PGINVI_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        ZN0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGINVI_ARBITER_TOP use entity work.PGINVI_ARBITER_TOP(behav);

  COMPONENT PGDFFR_ARBITER_TOP
    GENERIC (HLCQ, LHCQ, HLRQ, SUD0, 
        SUD1, HOLDD0, HOLDD1, POSC1, 
        POSC0, NEGC1, NEGC0, RECRC, 
        HOLDRC : TIME);
    PORT (
        RNESET : IN std_logic;
        CD : IN std_logic;
        CLK : IN std_logic;
        D0 : IN std_logic;
        Q0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGDFFR_ARBITER_TOP use entity work.PGDFFR_ARBITER_TOP(behav);

  COMPONENT PGAND3_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND3_ARBITER_TOP use entity work.PGAND3_ARBITER_TOP(behav);

  COMPONENT PGORF72_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF72_ARBITER_TOP use entity work.PGORF72_ARBITER_TOP(behav);

  COMPONENT PGAND4_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND4_ARBITER_TOP use entity work.PGAND4_ARBITER_TOP(behav);

  COMPONENT PXIN_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        XI0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PXIN_ARBITER_TOP use entity work.PXIN_ARBITER_TOP(behav);

  COMPONENT PXOUT_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A0 : IN std_logic;
        XO0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PXOUT_ARBITER_TOP use entity work.PXOUT_ARBITER_TOP(behav);

BEGIN

GLB_A0_P13 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A0_P13, A1 => A0_IN0, A0 => A0_IN3B);
GLB_A0_P0 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A0_P0, A1 => A0_IN3B, A0 => A0_IN9);
GLB_A0_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A0_G3, A0 => GND);
GLB_A0_G0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A0_G0, A0 => GND);
GLB_A0_P0_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A0_P0_xa, A0 => A0_P0);
GLB_AND_810 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_810, A0 => A0_X3O);
GLB_A0_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A0_P13_xa, A0 => A0_P13);
GLB_AND_814 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_814, A0 => A0_X0O);
GLB_A0_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A0_IN0, A0 => N_2_grpi);
GLB_A0_IN9 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A0_IN9, A0 => N_14_grpi);
GLB_A0_X3O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A0_X3O, A1 => A0_P0_xa, A0 => A0_G0);
GLB_A0_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A0_X0O, A1 => A0_P13_xa, A0 => A0_G3);
GLB_A0_IN3B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A0_IN3B, A0 => N_44_grpi);
GLB_A2_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A2_P13, A0 => A2_IN0);
GLB_A2_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_G3, A0 => GND);
GLB_A2_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_CLK, A0 => PLDCLKX_clk0);
GLB_A2_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A2_P13_xa, A0 => A2_P13);
GLB_A2_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_IN0, A0 => R_WX_grp);
GLB_A2_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_X0O, A1 => A2_P13_xa, A0 => A2_G3);
GLB_N_44 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_44, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => A2_CLK, 
	D0 => A2_X0O);
GLB_A3_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A3_P8, A1 => A3_IN3B, A0 => A3_IN4);
GLB_A3_P4 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A3_P4, A1 => A3_IN1, A0 => A3_IN3B);
GLB_A3_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A3_G2, A0 => GND);
GLB_A3_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A3_G1, A0 => GND);
GLB_A3_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A3_P4_xa, A0 => A3_P4);
GLB_AND_811 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_811, A0 => A3_X2O);
GLB_A3_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A3_P8_xa, A0 => A3_P8);
GLB_AND_813 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_813, A0 => A3_X1O);
GLB_A3_IN4 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A3_IN4, A0 => N_6_grpi);
GLB_A3_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A3_IN1, A0 => N_10_grpi);
GLB_A3_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A3_X2O, A1 => A3_P4_xa, A0 => A3_G1);
GLB_A3_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A3_X1O, A1 => A3_P8_xa, A0 => A3_G2);
GLB_A3_IN3B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A3_IN3B, A0 => N_44_grpi);
GLB_A6_P4 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P4, A1 => A6_IN3B, A0 => A6_IN8B);
GLB_A6_P0 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P0, A1 => A6_IN3, A0 => A6_IN8B);
GLB_A6_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G1, A0 => GND);
GLB_A6_G0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G0, A0 => GND);
GLB_A6_P0_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P0_xa, A0 => A6_P0);
GLB_AND_807 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_807, A0 => A6_X3O);
GLB_A6_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P4_xa, A0 => A6_P4);
GLB_AND_808 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_808, A0 => A6_X2O);
GLB_A6_IN3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A6_IN3, A0 => N_44_grpi);
GLB_A6_X3O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X3O, A1 => A6_P0_xa, A0 => A6_G0);
GLB_A6_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X2O, A1 => A6_P4_xa, A0 => A6_G1);
GLB_A6_IN3B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A6_IN3B, A0 => N_44_grpi);
GLB_A6_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A6_IN8B, A0 => N_21_grpi);
GLB_A7_P13 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A7_P13, A1 => A7_IN3B, A0 => A7_IN4);
GLB_A7_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A7_P8, A1 => A7_IN3B, A0 => A7_IN5);
GLB_A7_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A7_G3, A0 => GND);
GLB_A7_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A7_G2, A0 => GND);
GLB_A7_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A7_P8_xa, A0 => A7_P8);
GLB_AND_809 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_809, A0 => A7_X1O);
GLB_A7_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A7_P13_xa, A0 => A7_P13);
GLB_AND_812 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_812, A0 => A7_X0O);
GLB_A7_IN4 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A7_IN4, A0 => N_16_grpi);
GLB_A7_IN5 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A7_IN5, A0 => N_19_grpi);
GLB_A7_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A7_X1O, A1 => A7_P8_xa, A0 => A7_G2);
GLB_A7_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A7_X0O, A1 => A7_P13_xa, A0 => A7_G3);
GLB_A7_IN3B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A7_IN3B, A0 => N_44_grpi);
GLB_B0_P16 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B0_P16, A1 => B0_IN0, A0 => B0_IN8B);
GLB_B0_P15 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B0_P15, A2 => B0_IN0, A1 => B0_IN1, A0 => B0_IN2);
GLB_OR_752 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => OR_752, A1 => B0_P15, A0 => B0_P16);
GLB_B0_IN2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B0_IN2, A0 => INV_SEL_8TOBX_grp);
GLB_B0_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B0_IN1, A0 => INV_SEL_4TO7X_grp);
GLB_B0_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B0_IN0, A0 => INV_SEL_1X_grp);
GLB_B0_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B0_IN8B, A0 => WAIT1X_grp);
GLB_B1_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P13, A0 => VCC);
GLB_B1_P8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P8, A0 => B1_IN0B);
GLB_B1_P3 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B1_P3, A2 => B1_IN1, A1 => B1_IN2, A0 => B1_IN3);
GLB_B1_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_G3, A0 => B1_F0);
GLB_B1_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_G2, A0 => GND);
GLB_B1_F0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B1_F0, A0 => B1_P3);
GLB_B1_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_CLK, A0 => PLDCLKX_clk0);
GLB_B1_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B1_P8_xa, A0 => B1_P8);
GLB_B1_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B1_P13_xa, A0 => B1_P13);
GLB_B1_IN3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN3, A0 => INV_FC0X_grp);
GLB_B1_IN2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN2, A0 => INV_FC1X_grp);
GLB_B1_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN1, A0 => INV_FC2X_grp);
GLB_B1_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_X1O, A1 => B1_P8_xa, A0 => B1_G2);
GLB_B1_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_X0O, A1 => B1_P13_xa, A0 => B1_G3);
GLB_N_49 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_49, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B1_CLK, 
	D0 => B1_X1O);
GLB_N_47 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_47, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B1_CLK, 
	D0 => B1_X0O);
GLB_B1_IN0B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B1_IN0B, A0 => AND_751_grpi);
GLB_B2_P7 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B2_P7, A2 => B2_IN0B, A1 => B2_IN4B, A0 => B2_IN16B);
GLB_B2_P4 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B2_P4, A0 => VCC);
GLB_B2_P3 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B2_P3, A1 => B2_IN3, A0 => B2_IN16B);
GLB_B2_P2 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B2_P2, A2 => B2_IN0B, A1 => B2_IN4B, A0 => B2_IN16B);
GLB_B2_P0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B2_P0, A0 => VCC);
GLB_B2_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B2_G1, A0 => B2_F0);
GLB_B2_G0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B2_G0, A0 => B2_F1);
GLB_B2_F1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B2_F1, A0 => B2_P7);
GLB_B2_F0 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B2_F0, A1 => B2_P2, A0 => B2_P3);
GLB_B2_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B2_CLK, A0 => PLDCLKX_clk0);
GLB_B2_P0_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B2_P0_xa, A0 => B2_P0);
GLB_B2_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B2_P4_xa, A0 => B2_P4);
GLB_B2_IN3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B2_IN3, A0 => OR_806_grpi);
GLB_B2_X3O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B2_X3O, A1 => B2_P0_xa, A0 => B2_G0);
GLB_B2_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B2_X2O, A1 => B2_P4_xa, A0 => B2_G1);
GLB_N_59 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_59, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B2_CLK, 
	D0 => B2_X3O);
GLB_N_55 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_55, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B2_CLK, 
	D0 => B2_X2O);
GLB_B2_IN16B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B2_IN16B, A0 => INV_ASX_dir);
GLB_B2_IN4B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B2_IN4B, A0 => OR_752_grpi);
GLB_B2_IN0B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B2_IN0B, A0 => AND_751_grpi);
GLB_B4_P13 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B4_P13, A2 => B4_IN8B, A1 => B4_IN9B, A0 => B4_IN14B);
GLB_B4_P11 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B4_P11, A2 => B4_IN8, A1 => B4_IN9B, A0 => B4_IN14B);
GLB_B4_P10 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B4_P10, A2 => B4_IN7B, A1 => B4_IN8B, A0 => B4_IN14B);
GLB_B4_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B4_G3, A0 => GND);
GLB_B4_F2 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => B4_F2, A1 => B4_P10, A0 => B4_P11);
GLB_B4_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B4_CLK, A0 => PLDCLKX_clk0);
GLB_B4_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B4_P13_xa, A0 => B4_P13);
GLB_B4_IN8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B4_IN8, A0 => A1X_grp);
GLB_B4_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B4_X0O, A1 => B4_P13_xa, A0 => B4_G3);
GLB_N_10 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_10, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B4_CLK, 
	D0 => B4_F2);
GLB_N_2 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_2, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B4_CLK, 
	D0 => B4_X0O);
GLB_B4_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B4_IN9B, A0 => A0X_grp);
GLB_B4_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B4_IN14B, A0 => INV_DSX_grp);
GLB_B4_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B4_IN8B, A0 => A1X_grp);
GLB_B4_IN7B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B4_IN7B, A0 => OR_802_grpi);
GLB_B5_P13 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B5_P13, A1 => B5_IN9B, A0 => B5_IN14B);
GLB_B5_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B5_P8, A1 => B5_IN9B, A0 => B5_IN13B);
GLB_B5_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B5_G3, A0 => GND);
GLB_B5_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B5_G2, A0 => GND);
GLB_B5_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B5_CLK, A0 => PLDCLKX_clk0);
GLB_B5_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B5_P8_xa, A0 => B5_P8);
GLB_AND_760 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_760, A0 => B5_X1O);
GLB_B5_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B5_P13_xa, A0 => B5_P13);
GLB_B5_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B5_X1O, A1 => B5_P8_xa, A0 => B5_G2);
GLB_B5_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B5_X0O, A1 => B5_P13_xa, A0 => B5_G3);
GLB_N_16 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_16, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B5_CLK, 
	D0 => B5_X0O);
GLB_B5_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B5_IN14B, A0 => INV_DSX_grp);
GLB_B5_IN13B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B5_IN13B, A0 => SIZ1X_grp);
GLB_B5_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B5_IN9B, A0 => A0X_grp);
GLB_B6_P16 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B6_P16, A2 => B6_IN5B, A1 => B6_IN6, A0 => B6_IN15B);
GLB_B6_P15 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B6_P15, A2 => B6_IN4B, A1 => B6_IN6, A0 => B6_IN15B);
GLB_OR_806 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => OR_806, A1 => B6_P15, A0 => B6_P16);
GLB_B6_IN6 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B6_IN6, A0 => WAIT2X_grp);
GLB_B6_IN5B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B6_IN5B, A0 => INV_SEL_0X_grp);
GLB_B6_IN15B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B6_IN15B, A0 => AND_751_grpi);
GLB_B6_IN4B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B6_IN4B, A0 => INV_SEL_CX_grp);
GLB_B7_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B7_P13, A0 => B7_IN14);
GLB_B7_P11 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B7_P11, A1 => B7_IN6, A0 => B7_IN14B);
GLB_B7_P10 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B7_P10, A2 => B7_IN8, A1 => B7_IN10B, A0 => B7_IN14B);
GLB_B7_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B7_G3, A0 => GND);
GLB_B7_F2 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => B7_F2, A1 => B7_P10, A0 => B7_P11);
GLB_B7_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B7_CLK, A0 => PLDCLKX_clk0);
GLB_B7_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B7_P13_xa, A0 => B7_P13);
GLB_B7_IN14 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B7_IN14, A0 => INV_DSX_grp);
GLB_B7_IN6 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B7_IN6, A0 => OR_762_grpi);
GLB_B7_IN8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B7_IN8, A0 => A1X_grp);
GLB_B7_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B7_X0O, A1 => B7_P13_xa, A0 => B7_G3);
GLB_N_14 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_14, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B7_CLK, 
	D0 => B7_F2);
GLB_N_21 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_21, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B7_CLK, 
	D0 => B7_X0O);
GLB_B7_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B7_IN14B, A0 => INV_DSX_grp);
GLB_B7_IN10B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B7_IN10B, A0 => AND_760_grpi);
GLB_C1_P16 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C1_P16, A2 => C1_IN8B, A1 => C1_IN12B, A0 => C1_IN14B);
GLB_C1_P15 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C1_P15, A2 => C1_IN8B, A1 => C1_IN10B, A0 => C1_IN14B);
GLB_C1_P11 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C1_P11, A1 => C1_IN12B, A0 => C1_IN14B);
GLB_C1_P10 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C1_P10, A1 => C1_IN10B, A0 => C1_IN14B);
GLB_C1_F3 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => C1_F3, A1 => C1_P15, A0 => C1_P16);
GLB_C1_F2 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => C1_F2, A1 => C1_P10, A0 => C1_P11);
GLB_C1_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C1_CLK, A0 => PLDCLKX_clk0);
GLB_N_19 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_19, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C1_CLK, 
	D0 => C1_F2);
GLB_N_6 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_6, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C1_CLK, 
	D0 => C1_F3);
GLB_C1_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C1_IN8B, A0 => A1X_grp);
GLB_C1_IN12B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C1_IN12B, A0 => SIZ0X_grp);
GLB_C1_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C1_IN14B, A0 => INV_DSX_grp);
GLB_C1_IN10B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C1_IN10B, A0 => AND_760_grpi);
GLB_C4_P13 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C4_P13, A3 => C4_IN8B, A2 => C4_IN12, A1 => C4_IN13, 
	A0 => C4_IN14);
GLB_C4_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C4_G3, A0 => GND);
GLB_C4_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => C4_P13_xa, A0 => C4_P13);
GLB_AND_751 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_751, A0 => C4_X0O);
GLB_C4_IN14 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C4_IN14, A0 => INV_FC2X_grp);
GLB_C4_IN13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C4_IN13, A0 => INV_FC1X_grp);
GLB_C4_IN12 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C4_IN12, A0 => INV_FC0X_grp);
GLB_C4_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C4_X0O, A1 => C4_P13_xa, A0 => C4_G3);
GLB_C4_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C4_IN8B, A0 => INV_SEL_FX_grp);
GLB_C7_P16 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C7_P16, A1 => C7_IN12, A0 => C7_IN13B);
GLB_C7_P15 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C7_P15, A2 => C7_IN9B, A1 => C7_IN12B, A0 => C7_IN13);
GLB_C7_P11 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C7_P11, A1 => C7_IN12B, A0 => C7_IN13B);
GLB_C7_P10 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C7_P10, A2 => C7_IN9, A1 => C7_IN12, A0 => C7_IN13);
GLB_OR_802 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => OR_802, A1 => C7_P15, A0 => C7_P16);
GLB_OR_762 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => OR_762, A1 => C7_P10, A0 => C7_P11);
GLB_C7_IN13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C7_IN13, A0 => SIZ1X_grp);
GLB_C7_IN12 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C7_IN12, A0 => SIZ0X_grp);
GLB_C7_IN9 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C7_IN9, A0 => A0X_grp);
GLB_C7_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C7_IN9B, A0 => A0X_grp);
GLB_C7_IN13B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C7_IN13B, A0 => SIZ1X_grp);
GLB_C7_IN12B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C7_IN12B, A0 => SIZ0X_grp);
IOC_L2L_KEYWD_RESET : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 5.300000 ns, TFALL => 5.300000 ns)
	PORT MAP (Z0 => L2L_KEYWD_RESETb, XI0 => XRESET);
IOC_IO29_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO29_IBUFO, XI0 => WAIT2);
IOC_IO28_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO28_IBUFO, XI0 => WAIT1);
IOC_IO9_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO9_IBUFO, XI0 => SIZ1);
IOC_IO8_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO8_IBUFO, XI0 => SIZ0);
IOC_IO11_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO11_IBUFO, XI0 => R_W);
IOC_PLDCLKX : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => PLDCLKX, XI0 => PLDCLK);
IOC_IO35_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO35_IBUFO, XI0 => INV_SEL_F);
IOC_IO31_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO31_IBUFO, XI0 => INV_SEL_C);
IOC_IO34_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO34_IBUFO, XI0 => INV_SEL_8TOB);
IOC_IO33_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO33_IBUFO, XI0 => INV_SEL_4TO7);
IOC_IO32_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO32_IBUFO, XI0 => INV_SEL_1);
IOC_IO30_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO30_IBUFO, XI0 => INV_SEL_0);
IOC_IO26_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO26_IBUFO, XI0 => INV_FC2);
IOC_IO25_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO25_IBUFO, XI0 => INV_FC1);
IOC_IO24_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO24_IBUFO, XI0 => INV_FC0);
IOC_IO10_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO10_IBUFO, XI0 => INV_DS);
IOC_INV_ASX : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 2.200000 ns, TFALL => 2.200000 ns)
	PORT MAP (Z0 => INV_ASX, XI0 => INV_AS);
IOC_IO7_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO7_IBUFO, XI0 => A1);
IOC_IO6_IBUFO : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => IO6_IBUFO, XI0 => A0);
IOC_INV_WRUU : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRUU, A0 => IO12_OBUFI);
IOC_IO12_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO12_OBUFI, A0 => AND_814_iomux);
IOC_INV_WRUM : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRUM, A0 => IO13_OBUFI);
IOC_IO13_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO13_OBUFI, A0 => AND_813_iomux);
IOC_INV_WRU : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRU, A0 => IO16_OBUFI);
IOC_IO16_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO16_OBUFI, A0 => AND_812_iomux);
IOC_INV_WRLM : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRLM, A0 => IO14_OBUFI);
IOC_IO14_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO14_OBUFI, A0 => AND_811_iomux);
IOC_INV_WRLL : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRLL, A0 => IO15_OBUFI);
IOC_IO15_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO15_OBUFI, A0 => AND_810_iomux);
IOC_INV_WRL : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRL, A0 => IO17_OBUFI);
IOC_IO17_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO17_OBUFI, A0 => AND_809_iomux);
IOC_INV_WR : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WR, A0 => IO18_OBUFI);
IOC_IO18_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO18_OBUFI, A0 => AND_808_iomux);
IOC_INV_RD : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_RD, A0 => IO19_OBUFI);
IOC_IO19_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO19_OBUFI, A0 => AND_807_iomux);
IOC_INV_MPU_DSACK1 : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_MPU_DSACK1, A0 => IO39_OBUFI);
IOC_IO39_OBUFI : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO39_OBUFI, A0 => N_59_iomux);
IOC_INV_MPU_DSACK0 : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_MPU_DSACK0, A0 => IO38_OBUFI);
IOC_IO38_OBUFI : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO38_OBUFI, A0 => N_55_iomux);
IOC_INV_IACK_AVEC : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_IACK_AVEC, A0 => IO37_OBUFI);
IOC_IO37_OBUFI : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO37_OBUFI, A0 => N_49_iomux);
IOC_INV_CPU : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_CPU, A0 => IO36_OBUFI);
IOC_IO36_OBUFI : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (Z0 => IO36_OBUFI, A0 => N_47_iomux);
GRP_AND_814_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_814_iomux, A0 => AND_814);
GRP_AND_810_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_810_iomux, A0 => AND_810);
GRP_N_44_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_44_grpi, A0 => N_44);
GRP_N_2_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_2_grpi, A0 => N_2);
GRP_N_14_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_14_grpi, A0 => N_14);
GRP_R_WX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => R_WX_grp, A0 => IO11_IBUFO);
GRP_PLDCLKX_clk0 : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => PLDCLKX_clk0, XI0 => PLDCLKX);
GRP_AND_813_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_813_iomux, A0 => AND_813);
GRP_AND_811_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_811_iomux, A0 => AND_811);
GRP_N_10_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_10_grpi, A0 => N_10);
GRP_N_6_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_6_grpi, A0 => N_6);
GRP_AND_808_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_808_iomux, A0 => AND_808);
GRP_AND_807_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_807_iomux, A0 => AND_807);
GRP_N_21_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_21_grpi, A0 => N_21);
GRP_AND_812_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_812_iomux, A0 => AND_812);
GRP_AND_809_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_809_iomux, A0 => AND_809);
GRP_N_19_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_19_grpi, A0 => N_19);
GRP_N_16_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_16_grpi, A0 => N_16);
GRP_OR_752_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => OR_752_grpi, A0 => OR_752);
GRP_INV_SEL_1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_1X_grp, A0 => IO32_IBUFO);
GRP_INV_SEL_4TO7X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_4TO7X_grp, A0 => IO33_IBUFO);
GRP_INV_SEL_8TOBX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_8TOBX_grp, A0 => IO34_IBUFO);
GRP_WAIT1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => WAIT1X_grp, A0 => IO28_IBUFO);
GRP_N_49_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_49_iomux, A0 => N_49);
GRP_N_47_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_47_iomux, A0 => N_47);
GRP_INV_FC0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC0X_grp, A0 => IO24_IBUFO);
GRP_INV_FC1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC1X_grp, A0 => IO25_IBUFO);
GRP_INV_FC2X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC2X_grp, A0 => IO26_IBUFO);
GRP_AND_751_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => AND_751_grpi, A0 => AND_751);
GRP_N_59_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_59_iomux, A0 => N_59);
GRP_N_55_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_55_iomux, A0 => N_55);
GRP_INV_ASX_dir : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.000000 ns, TFALL => 0.000000 ns)
	PORT MAP (Z0 => INV_ASX_dir, A0 => INV_ASX);
GRP_OR_806_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => OR_806_grpi, A0 => OR_806);
GRP_A0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A0X_grp, A0 => IO6_IBUFO);
GRP_A1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A1X_grp, A0 => IO7_IBUFO);
GRP_INV_DSX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_DSX_grp, A0 => IO10_IBUFO);
GRP_OR_802_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => OR_802_grpi, A0 => OR_802);
GRP_AND_760_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => AND_760_grpi, A0 => AND_760);
GRP_SIZ1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => SIZ1X_grp, A0 => IO9_IBUFO);
GRP_INV_SEL_0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_0X_grp, A0 => IO30_IBUFO);
GRP_INV_SEL_CX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_CX_grp, A0 => IO31_IBUFO);
GRP_WAIT2X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => WAIT2X_grp, A0 => IO29_IBUFO);
GRP_OR_762_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => OR_762_grpi, A0 => OR_762);
GRP_SIZ0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => SIZ0X_grp, A0 => IO8_IBUFO);
GRP_INV_SEL_FX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_FX_grp, A0 => IO35_IBUFO);
GRP_L2L_KEYWD_RESET_glb : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 3.900000 ns, TFALL => 3.900000 ns)
	PORT MAP (Z0 => L2L_KEYWD_RESET_glbb, XI0 => L2L_KEYWD_RESETb);
END ARBITER_TOP_STRUCTURE;
