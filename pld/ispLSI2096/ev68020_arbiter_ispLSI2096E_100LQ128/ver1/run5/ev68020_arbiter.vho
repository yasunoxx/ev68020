-- VHDL netlist for ARBITER_TOP
-- Date: Sun Nov 10 21:06:34 2024
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

ENTITY PGORF74_ARBITER_TOP IS 
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
END PGORF74_ARBITER_TOP;

ARCHITECTURE behav OF PGORF74_ARBITER_TOP IS 
BEGIN

    PROCESS (A3, A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A3 OR A2 OR A1 OR 
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

ENTITY PGAND5_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGAND5_ARBITER_TOP;

ARCHITECTURE behav OF PGAND5_ARBITER_TOP IS 
BEGIN

    PROCESS (A4, A3, A2, A1, 
		A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A4 AND A3 AND A2 AND 
            A1 AND A0;
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

ENTITY PGORF76_ARBITER_TOP IS 
    GENERIC (
        TRISE : TIME := 1 ns;
        TFALL : TIME := 1 ns
    );
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
END PGORF76_ARBITER_TOP;

ARCHITECTURE behav OF PGORF76_ARBITER_TOP IS 
BEGIN

    PROCESS (A5, A4, A3, A2, 
		A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A5 OR A4 OR A3 OR 
            A2 OR A1 OR A0;
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

ENTITY PGORF73_ARBITER_TOP IS 
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
END PGORF73_ARBITER_TOP;

ARCHITECTURE behav OF PGORF73_ARBITER_TOP IS 
BEGIN

    PROCESS (A2, A1, A0)
    VARIABLE ZDF : std_logic;
    BEGIN
        ZDF := A2 OR A1 OR A0;
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
SIGNAL  N_44_grpi, N_10_grpi, N_2_grpi, N_6_grpi,
	 N_14_grpi, N_21_grpi, N_19_grpi, N_16_grpi,
	 AND_795_grpi, L2L_KEYWD_RESETb, IO29_IBUFO, IO28_IBUFO,
	 IO9_IBUFO, IO8_IBUFO, IO11_IBUFO, PLDCLKX,
	 IO35_IBUFO, IO31_IBUFO, IO34_IBUFO, IO33_IBUFO,
	 IO32_IBUFO, IO30_IBUFO, IO26_IBUFO, IO25_IBUFO,
	 IO24_IBUFO, IO10_IBUFO, INV_ASX, IO7_IBUFO,
	 IO6_IBUFO, IO12_OBUFI, AND_828_iomux, IO13_OBUFI,
	 AND_827_iomux, IO16_OBUFI, AND_826_iomux, IO14_OBUFI,
	 AND_825_iomux, IO15_OBUFI, AND_824_iomux, IO17_OBUFI,
	 AND_823_iomux, IO18_OBUFI, AND_822_iomux, IO19_OBUFI,
	 AND_821_iomux, IO39_OBUFI, N_59_iomux, IO38_OBUFI,
	 N_55_iomux, IO37_OBUFI, N_49_iomux, IO36_OBUFI,
	 N_47_iomux, A2_P0_xa, AND_824, A2_X3O,
	 A2_P4_xa, AND_825, A2_X2O, A2_P8_xa,
	 AND_827, A2_X1O, A2_P13_xa, AND_828,
	 A2_X0O, A2_G3, A2_G2, A2_G1,
	 A2_G0, A2_P13, A2_IN9, A2_P8,
	 A2_IN3, A2_P4, A2_IN0, A2_P0,
	 A2_IN1, A2_IN8B, A6_P0_xa, AND_821,
	 A6_X3O, A6_P4_xa, AND_822, A6_X2O,
	 A6_P8_xa, AND_823, A6_X1O, A6_P13_xa,
	 AND_826, A6_X0O, A6_G3, A6_G2,
	 A6_G1, A6_G0, A6_P13, A6_IN9,
	 A6_P8, A6_IN2, A6_P4, A6_IN8B,
	 A6_P0, A6_IN8, A6_IN12B, N_59,
	 N_49, N_47, B1_CLK, B1_P4_xa,
	 AND_795, B1_X2O, B1_P8_xa, B1_X1O,
	 B1_P13_xa, B1_X0O, B1_G3, B1_G2,
	 B1_G1, B1_F4, B1_F1, B1_F0,
	 B1_P13, B1_P12, B1_P8, B1_P7,
	 B1_P4, B1_P3, B1_IN16, B1_P2,
	 B1_IN8B, B1_P1, B1_IN0, B1_IN5,
	 B1_IN6, INV_FC0X_grp, INV_FC1X_grp, INV_FC2X_grp,
	 B1_P0, B1_IN1, B1_IN2, B1_IN3,
	 B1_IN7B, N_55, N_16, N_21,
	 B3_CLK, B3_X2O, B3_P8_xa, B3_X1O,
	 B3_P13_xa, B3_X0O, B3_G3, B3_G2,
	 B3_G1, B3_F5, B3_P19, INV_SEL_4TO7X_grp,
	 INV_SEL_8TOBX_grp, B3_P18, B3_IN2, B3_IN5,
	 INV_SEL_CX_grp, INV_SEL_0X_grp, B3_P17, B3_IN10,
	 B3_IN11, INV_ASX_dir, B3_P16, B3_IN16,
	 INV_SEL_FX_grp, B3_P15, B3_IN3B, B3_IN13,
	 INV_SEL_1X_grp, WAIT2X_grp, WAIT1X_grp, B3_P14,
	 B3_IN0, B3_IN8B, B3_IN9B, B3_P13,
	 B3_IN1, B3_P8, B3_IN1B, B3_IN6B,
	 N_10, N_14, N_19, N_6,
	 C2_CLK, C2_P8_xa, C2_X1O, C2_G2,
	 C2_F4, C2_F3, C2_F1, C2_F0,
	 C2_P16, C2_P15, C2_P14, C2_P12,
	 C2_IN14, C2_P11, C2_P8, C2_P7,
	 C2_P6, C2_P5, C2_P4, C2_P3,
	 C2_IN8, C2_IN9B, C2_P2, C2_IN9,
	 C2_P1, C2_IN12, C2_IN13, SIZ1X_grp,
	 SIZ0X_grp, C2_P0, C2_IN8B, C2_IN12B,
	 C2_IN13B, C2_IN14B, N_2, N_44,
	 L2L_KEYWD_RESET_glbb, C3_CLK, PLDCLKX_clk0, C3_P8_xa,
	 C3_X1O, C3_P13_xa, C3_X0O, C3_G3,
	 C3_G2, R_WX_grp, C3_P13, C3_IN15,
	 INV_DSX_grp, A0X_grp, A1X_grp, C3_P8,
	 C3_IN8B, C3_IN9B, C3_IN14B : std_logic;


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

  COMPONENT PGORF74_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF74_ARBITER_TOP use entity work.PGORF74_ARBITER_TOP(behav);

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

  COMPONENT PGAND5_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGAND5_ARBITER_TOP use entity work.PGAND5_ARBITER_TOP(behav);

  COMPONENT PGORF76_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A5 : IN std_logic;
        A4 : IN std_logic;
        A3 : IN std_logic;
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF76_ARBITER_TOP use entity work.PGORF76_ARBITER_TOP(behav);

  COMPONENT PGORF72_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF72_ARBITER_TOP use entity work.PGORF72_ARBITER_TOP(behav);

  COMPONENT PGORF73_ARBITER_TOP
    GENERIC (TRISE, TFALL : TIME);
    PORT (
        A2 : IN std_logic;
        A1 : IN std_logic;
        A0 : IN std_logic;
        Z0 : OUT std_logic
    );
  END COMPONENT;
  for all :  PGORF73_ARBITER_TOP use entity work.PGORF73_ARBITER_TOP(behav);

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

GLB_A2_P13 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A2_P13, A1 => A2_IN8B, A0 => A2_IN9);
GLB_A2_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A2_P8, A1 => A2_IN3, A0 => A2_IN8B);
GLB_A2_P4 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A2_P4, A1 => A2_IN0, A0 => A2_IN8B);
GLB_A2_P0 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A2_P0, A1 => A2_IN1, A0 => A2_IN8B);
GLB_A2_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_G3, A0 => GND);
GLB_A2_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_G2, A0 => GND);
GLB_A2_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_G1, A0 => GND);
GLB_A2_G0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_G0, A0 => GND);
GLB_A2_P0_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A2_P0_xa, A0 => A2_P0);
GLB_AND_824 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_824, A0 => A2_X3O);
GLB_A2_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A2_P4_xa, A0 => A2_P4);
GLB_AND_825 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_825, A0 => A2_X2O);
GLB_A2_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A2_P8_xa, A0 => A2_P8);
GLB_AND_827 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_827, A0 => A2_X1O);
GLB_A2_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A2_P13_xa, A0 => A2_P13);
GLB_AND_828 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_828, A0 => A2_X0O);
GLB_A2_IN9 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_IN9, A0 => N_2_grpi);
GLB_A2_IN3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_IN3, A0 => N_6_grpi);
GLB_A2_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_IN0, A0 => N_10_grpi);
GLB_A2_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A2_IN1, A0 => N_14_grpi);
GLB_A2_X3O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_X3O, A1 => A2_P0_xa, A0 => A2_G0);
GLB_A2_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_X2O, A1 => A2_P4_xa, A0 => A2_G1);
GLB_A2_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_X1O, A1 => A2_P8_xa, A0 => A2_G2);
GLB_A2_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A2_X0O, A1 => A2_P13_xa, A0 => A2_G3);
GLB_A2_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A2_IN8B, A0 => N_44_grpi);
GLB_A6_P13 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P13, A1 => A6_IN8B, A0 => A6_IN9);
GLB_A6_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P8, A1 => A6_IN2, A0 => A6_IN8B);
GLB_A6_P4 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P4, A1 => A6_IN8B, A0 => A6_IN12B);
GLB_A6_P0 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A6_P0, A1 => A6_IN8, A0 => A6_IN12B);
GLB_A6_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G3, A0 => GND);
GLB_A6_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G2, A0 => GND);
GLB_A6_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G1, A0 => GND);
GLB_A6_G0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_G0, A0 => GND);
GLB_A6_P0_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P0_xa, A0 => A6_P0);
GLB_AND_821 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_821, A0 => A6_X3O);
GLB_A6_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P4_xa, A0 => A6_P4);
GLB_AND_822 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_822, A0 => A6_X2O);
GLB_A6_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P8_xa, A0 => A6_P8);
GLB_AND_823 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_823, A0 => A6_X1O);
GLB_A6_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => A6_P13_xa, A0 => A6_P13);
GLB_AND_826 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_826, A0 => A6_X0O);
GLB_A6_IN9 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A6_IN9, A0 => N_16_grpi);
GLB_A6_IN2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A6_IN2, A0 => N_19_grpi);
GLB_A6_IN8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => A6_IN8, A0 => N_44_grpi);
GLB_A6_X3O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X3O, A1 => A6_P0_xa, A0 => A6_G0);
GLB_A6_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X2O, A1 => A6_P4_xa, A0 => A6_G1);
GLB_A6_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X1O, A1 => A6_P8_xa, A0 => A6_G2);
GLB_A6_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => A6_X0O, A1 => A6_P13_xa, A0 => A6_G3);
GLB_A6_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A6_IN8B, A0 => N_44_grpi);
GLB_A6_IN12B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => A6_IN12B, A0 => N_21_grpi);
GLB_B1_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P13, A0 => VCC);
GLB_B1_P12 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P12, A3 => B1_IN1, A2 => B1_IN2, A1 => B1_IN3, 
	A0 => B1_IN7B);
GLB_B1_P8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P8, A0 => VCC);
GLB_B1_P7 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B1_P7, A2 => B1_IN1, A1 => B1_IN2, A0 => B1_IN3);
GLB_B1_P4 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P4, A2 => B1_IN1, A1 => B1_IN2, A0 => B1_IN3);
GLB_B1_P3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B1_P3, A0 => B1_IN16);
GLB_B1_P2 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B1_P2, A1 => B1_IN0, A0 => B1_IN8B);
GLB_B1_P1 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B1_P1, A2 => B1_IN0, A1 => B1_IN5, A0 => B1_IN6);
GLB_B1_P0 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B1_P0, A3 => B1_IN1, A2 => B1_IN2, A1 => B1_IN3, 
	A0 => B1_IN7B);
GLB_B1_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_G3, A0 => B1_F1);
GLB_B1_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_G2, A0 => B1_F4);
GLB_B1_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_G1, A0 => GND);
GLB_B1_F4 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B1_F4, A0 => B1_P12);
GLB_B1_F1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B1_F1, A0 => B1_P7);
GLB_B1_F0 : PGORF74_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => B1_F0, A3 => B1_P0, A2 => B1_P1, A1 => B1_P2, 
	A0 => B1_P3);
GLB_B1_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_CLK, A0 => PLDCLKX_clk0);
GLB_B1_P4_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B1_P4_xa, A0 => B1_P4);
GLB_AND_795 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => AND_795, A0 => B1_X2O);
GLB_B1_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B1_P8_xa, A0 => B1_P8);
GLB_B1_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B1_P13_xa, A0 => B1_P13);
GLB_B1_IN16 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN16, A0 => INV_ASX_dir);
GLB_B1_IN6 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN6, A0 => INV_SEL_8TOBX_grp);
GLB_B1_IN5 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN5, A0 => INV_SEL_4TO7X_grp);
GLB_B1_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN0, A0 => INV_SEL_1X_grp);
GLB_B1_IN3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN3, A0 => INV_FC0X_grp);
GLB_B1_IN2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN2, A0 => INV_FC1X_grp);
GLB_B1_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B1_IN1, A0 => INV_FC2X_grp);
GLB_B1_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_X2O, A1 => B1_P4_xa, A0 => B1_G1);
GLB_B1_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_X1O, A1 => B1_P8_xa, A0 => B1_G2);
GLB_B1_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B1_X0O, A1 => B1_P13_xa, A0 => B1_G3);
GLB_N_59 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_59, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B1_CLK, 
	D0 => B1_F0);
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
GLB_B1_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B1_IN8B, A0 => WAIT1X_grp);
GLB_B1_IN7B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B1_IN7B, A0 => INV_SEL_FX_grp);
GLB_B3_P19 : PGAND5_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B3_P19, A4 => B3_IN0, A3 => B3_IN2, A2 => B3_IN5, 
	A1 => B3_IN10, A0 => B3_IN11);
GLB_B3_P18 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B3_P18, A3 => B3_IN0, A2 => B3_IN2, A1 => B3_IN5, 
	A0 => B3_IN9B);
GLB_B3_P17 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B3_P17, A3 => B3_IN0, A2 => B3_IN8B, A1 => B3_IN10, 
	A0 => B3_IN11);
GLB_B3_P16 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B3_P16, A0 => B3_IN16);
GLB_B3_P15 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B3_P15, A1 => B3_IN3B, A0 => B3_IN13);
GLB_B3_P14 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => B3_P14, A2 => B3_IN0, A1 => B3_IN8B, A0 => B3_IN9B);
GLB_B3_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B3_P13, A0 => B3_IN1);
GLB_B3_P8 : PGAND2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => B3_P8, A1 => B3_IN1B, A0 => B3_IN6B);
GLB_B3_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_G3, A0 => GND);
GLB_B3_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_G2, A0 => GND);
GLB_B3_G1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_G1, A0 => B3_F5);
GLB_B3_F5 : PGORF76_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => B3_F5, A5 => B3_P14, A4 => B3_P15, A3 => B3_P16, 
	A2 => B3_P19, A1 => B3_P17, A0 => B3_P18);
GLB_B3_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_CLK, A0 => PLDCLKX_clk0);
GLB_B3_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B3_P8_xa, A0 => B3_P8);
GLB_B3_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => B3_P13_xa, A0 => B3_P13);
GLB_B3_IN5 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN5, A0 => INV_SEL_4TO7X_grp);
GLB_B3_IN2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN2, A0 => INV_SEL_8TOBX_grp);
GLB_B3_IN11 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN11, A0 => INV_SEL_CX_grp);
GLB_B3_IN10 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN10, A0 => INV_SEL_0X_grp);
GLB_B3_IN16 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN16, A0 => INV_ASX_dir);
GLB_B3_IN13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN13, A0 => AND_795_grpi);
GLB_B3_IN0 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN0, A0 => INV_SEL_1X_grp);
GLB_B3_IN1 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => B3_IN1, A0 => INV_DSX_grp);
GLB_B3_X2O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_X2O, A1 => GND, A0 => B3_G1);
GLB_B3_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_X1O, A1 => B3_P8_xa, A0 => B3_G2);
GLB_B3_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => B3_X0O, A1 => B3_P13_xa, A0 => B3_G3);
GLB_N_55 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_55, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B3_CLK, 
	D0 => B3_X2O);
GLB_N_16 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_16, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B3_CLK, 
	D0 => B3_X1O);
GLB_N_21 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_21, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => B3_CLK, 
	D0 => B3_X0O);
GLB_B3_IN3B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B3_IN3B, A0 => INV_SEL_FX_grp);
GLB_B3_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B3_IN9B, A0 => WAIT2X_grp);
GLB_B3_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B3_IN8B, A0 => WAIT1X_grp);
GLB_B3_IN6B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B3_IN6B, A0 => A0X_grp);
GLB_B3_IN1B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => B3_IN1B, A0 => INV_DSX_grp);
GLB_C2_P16 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P16, A2 => C2_IN8B, A1 => C2_IN9, A0 => C2_IN14B);
GLB_C2_P15 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P15, A2 => C2_IN8B, A1 => C2_IN13, A0 => C2_IN14B);
GLB_C2_P14 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P14, A2 => C2_IN8B, A1 => C2_IN12B, A0 => C2_IN14B);
GLB_C2_P12 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C2_P12, A0 => C2_IN14);
GLB_C2_P11 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P11, A2 => C2_IN9B, A1 => C2_IN12, A0 => C2_IN13B);
GLB_C2_P8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C2_P8, A0 => VCC);
GLB_C2_P7 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P7, A2 => C2_IN8, A1 => C2_IN9, A0 => C2_IN14B);
GLB_C2_P6 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P6, A2 => C2_IN8, A1 => C2_IN13, A0 => C2_IN14B);
GLB_C2_P5 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P5, A2 => C2_IN12B, A1 => C2_IN13B, A0 => C2_IN14B);
GLB_C2_P4 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C2_P4, A3 => C2_IN9, A2 => C2_IN12, A1 => C2_IN13, 
	A0 => C2_IN14B);
GLB_C2_P3 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P3, A2 => C2_IN8, A1 => C2_IN9B, A0 => C2_IN14B);
GLB_C2_P2 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P2, A3 => C2_IN8B, A2 => C2_IN9, A1 => C2_IN12B, 
	A0 => C2_IN14B);
GLB_C2_P1 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => C2_P1, A3 => C2_IN8B, A2 => C2_IN12, A1 => C2_IN13, 
	A0 => C2_IN14B);
GLB_C2_P0 : PGAND4_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C2_P0, A3 => C2_IN8B, A2 => C2_IN12B, A1 => C2_IN13B, 
	A0 => C2_IN14B);
GLB_C2_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C2_G2, A0 => C2_F4);
GLB_C2_F4 : PGORF72_ARBITER_TOP
    GENERIC MAP (TRISE => 2.500000 ns, TFALL => 2.500000 ns)
	PORT MAP (Z0 => C2_F4, A1 => C2_P11, A0 => C2_P12);
GLB_C2_F3 : PGORF73_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => C2_F3, A2 => C2_P14, A1 => C2_P15, A0 => C2_P16);
GLB_C2_F1 : PGORF74_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => C2_F1, A3 => C2_P4, A2 => C2_P5, A1 => C2_P6, 
	A0 => C2_P7);
GLB_C2_F0 : PGORF74_ARBITER_TOP
    GENERIC MAP (TRISE => 3.600000 ns, TFALL => 3.600000 ns)
	PORT MAP (Z0 => C2_F0, A3 => C2_P0, A2 => C2_P1, A1 => C2_P2, 
	A0 => C2_P3);
GLB_C2_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_CLK, A0 => PLDCLKX_clk0);
GLB_C2_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => C2_P8_xa, A0 => C2_P8);
GLB_C2_IN14 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_IN14, A0 => INV_DSX_grp);
GLB_C2_IN8 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_IN8, A0 => A1X_grp);
GLB_C2_IN9 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_IN9, A0 => A0X_grp);
GLB_C2_IN13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_IN13, A0 => SIZ1X_grp);
GLB_C2_IN12 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C2_IN12, A0 => SIZ0X_grp);
GLB_C2_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C2_X1O, A1 => C2_P8_xa, A0 => C2_G2);
GLB_N_10 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_10, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C2_CLK, 
	D0 => C2_F0);
GLB_N_14 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_14, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C2_CLK, 
	D0 => C2_F1);
GLB_N_19 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_19, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C2_CLK, 
	D0 => C2_X1O);
GLB_N_6 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_6, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C2_CLK, 
	D0 => C2_F3);
GLB_C2_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C2_IN9B, A0 => A0X_grp);
GLB_C2_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C2_IN14B, A0 => INV_DSX_grp);
GLB_C2_IN13B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C2_IN13B, A0 => SIZ1X_grp);
GLB_C2_IN12B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C2_IN12B, A0 => SIZ0X_grp);
GLB_C2_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C2_IN8B, A0 => A1X_grp);
GLB_C3_P13 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C3_P13, A0 => C3_IN15);
GLB_C3_P8 : PGAND3_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => C3_P8, A2 => C3_IN8B, A1 => C3_IN9B, A0 => C3_IN14B);
GLB_C3_G3 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C3_G3, A0 => GND);
GLB_C3_G2 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C3_G2, A0 => GND);
GLB_C3_CLK : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C3_CLK, A0 => PLDCLKX_clk0);
GLB_C3_P8_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => C3_P8_xa, A0 => C3_P8);
GLB_C3_P13_xa : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 3.300000 ns, TFALL => 3.300000 ns)
	PORT MAP (Z0 => C3_P13_xa, A0 => C3_P13);
GLB_C3_IN15 : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (Z0 => C3_IN15, A0 => R_WX_grp);
GLB_C3_X1O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C3_X1O, A1 => C3_P8_xa, A0 => C3_G2);
GLB_C3_X0O : PGXOR2_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (Z0 => C3_X0O, A1 => C3_P13_xa, A0 => C3_G3);
GLB_N_2 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_2, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C3_CLK, 
	D0 => C3_X1O);
GLB_N_44 : PGDFFR_ARBITER_TOP
    GENERIC MAP (HLCQ => 0.300000 ns, LHCQ => 0.300000 ns, HLRQ => 1.300000 ns, SUD0 => 1.200000 ns, 
        SUD1 => 1.200000 ns, HOLDD0 => 4.000000 ns, HOLDD1 => 4.000000 ns, POSC1 => 5.000000 ns, 
        POSC0 => 5.000000 ns, NEGC1 => 5.000000 ns, NEGC0 => 5.000000 ns, RECRC => 0.000000 ns, 
        HOLDRC => 0.000000 ns)
	PORT MAP (Q0 => N_44, RNESET => L2L_KEYWD_RESET_glbb, CD => GND, CLK => C3_CLK, 
	D0 => C3_X0O);
GLB_C3_IN14B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C3_IN14B, A0 => INV_DSX_grp);
GLB_C3_IN9B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C3_IN9B, A0 => A0X_grp);
GLB_C3_IN8B : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.500000 ns, TFALL => 0.500000 ns)
	PORT MAP (ZN0 => C3_IN8B, A0 => A1X_grp);
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
	PORT MAP (ZN0 => IO12_OBUFI, A0 => AND_828_iomux);
IOC_INV_WRUM : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRUM, A0 => IO13_OBUFI);
IOC_IO13_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO13_OBUFI, A0 => AND_827_iomux);
IOC_INV_WRU : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRU, A0 => IO16_OBUFI);
IOC_IO16_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO16_OBUFI, A0 => AND_826_iomux);
IOC_INV_WRLM : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRLM, A0 => IO14_OBUFI);
IOC_IO14_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO14_OBUFI, A0 => AND_825_iomux);
IOC_INV_WRLL : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRLL, A0 => IO15_OBUFI);
IOC_IO15_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO15_OBUFI, A0 => AND_824_iomux);
IOC_INV_WRL : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WRL, A0 => IO17_OBUFI);
IOC_IO17_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO17_OBUFI, A0 => AND_823_iomux);
IOC_INV_WR : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_WR, A0 => IO18_OBUFI);
IOC_IO18_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO18_OBUFI, A0 => AND_822_iomux);
IOC_INV_RD : PXOUT_ARBITER_TOP
    GENERIC MAP (TRISE => 1.300000 ns, TFALL => 1.300000 ns)
	PORT MAP (XO0 => INV_RD, A0 => IO19_OBUFI);
IOC_IO19_OBUFI : PGINVI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.300000 ns, TFALL => 0.300000 ns)
	PORT MAP (ZN0 => IO19_OBUFI, A0 => AND_821_iomux);
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
GRP_AND_828_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_828_iomux, A0 => AND_828);
GRP_AND_827_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_827_iomux, A0 => AND_827);
GRP_AND_825_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_825_iomux, A0 => AND_825);
GRP_AND_824_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_824_iomux, A0 => AND_824);
GRP_N_44_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_44_grpi, A0 => N_44);
GRP_N_10_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_10_grpi, A0 => N_10);
GRP_N_2_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_2_grpi, A0 => N_2);
GRP_N_6_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_6_grpi, A0 => N_6);
GRP_N_14_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_14_grpi, A0 => N_14);
GRP_AND_826_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_826_iomux, A0 => AND_826);
GRP_AND_823_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_823_iomux, A0 => AND_823);
GRP_AND_822_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_822_iomux, A0 => AND_822);
GRP_AND_821_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => AND_821_iomux, A0 => AND_821);
GRP_N_21_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_21_grpi, A0 => N_21);
GRP_N_19_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_19_grpi, A0 => N_19);
GRP_N_16_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => N_16_grpi, A0 => N_16);
GRP_N_59_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_59_iomux, A0 => N_59);
GRP_N_49_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_49_iomux, A0 => N_49);
GRP_N_47_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_47_iomux, A0 => N_47);
GRP_AND_795_grpi : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => AND_795_grpi, A0 => AND_795);
GRP_INV_ASX_dir : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 0.000000 ns, TFALL => 0.000000 ns)
	PORT MAP (Z0 => INV_ASX_dir, A0 => INV_ASX);
GRP_INV_FC0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC0X_grp, A0 => IO24_IBUFO);
GRP_INV_FC1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC1X_grp, A0 => IO25_IBUFO);
GRP_INV_FC2X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_FC2X_grp, A0 => IO26_IBUFO);
GRP_INV_SEL_1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_1X_grp, A0 => IO32_IBUFO);
GRP_INV_SEL_4TO7X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_4TO7X_grp, A0 => IO33_IBUFO);
GRP_INV_SEL_8TOBX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_8TOBX_grp, A0 => IO34_IBUFO);
GRP_INV_SEL_FX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_FX_grp, A0 => IO35_IBUFO);
GRP_WAIT1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => WAIT1X_grp, A0 => IO28_IBUFO);
GRP_PLDCLKX_clk0 : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => PLDCLKX_clk0, XI0 => PLDCLKX);
GRP_N_55_iomux : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.400000 ns, TFALL => 1.400000 ns)
	PORT MAP (Z0 => N_55_iomux, A0 => N_55);
GRP_A0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A0X_grp, A0 => IO6_IBUFO);
GRP_INV_DSX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_DSX_grp, A0 => IO10_IBUFO);
GRP_INV_SEL_0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_0X_grp, A0 => IO30_IBUFO);
GRP_INV_SEL_CX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => INV_SEL_CX_grp, A0 => IO31_IBUFO);
GRP_WAIT2X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => WAIT2X_grp, A0 => IO29_IBUFO);
GRP_A1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => A1X_grp, A0 => IO7_IBUFO);
GRP_SIZ0X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => SIZ0X_grp, A0 => IO8_IBUFO);
GRP_SIZ1X_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => SIZ1X_grp, A0 => IO9_IBUFO);
GRP_R_WX_grp : PGBUFI_ARBITER_TOP
    GENERIC MAP (TRISE => 1.700000 ns, TFALL => 1.700000 ns)
	PORT MAP (Z0 => R_WX_grp, A0 => IO11_IBUFO);
GRP_L2L_KEYWD_RESET_glb : PXIN_ARBITER_TOP
    GENERIC MAP (TRISE => 3.900000 ns, TFALL => 3.900000 ns)
	PORT MAP (Z0 => L2L_KEYWD_RESET_glbb, XI0 => L2L_KEYWD_RESETb);
END ARBITER_TOP_STRUCTURE;
