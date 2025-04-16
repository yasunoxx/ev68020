
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.14.0.75.2

-- ldbanno -n VHDL -o ev68020_arbiter_impl1_mapvho.vho -w -neg -gui -msgset C:/Users/Yasuno/Documents/dev/ev68020/pld/LCMXO2-256/promote.xml ev68020_arbiter_impl1_map.ncd 
-- Netlist created on Fri Dec 06 01:54:16 2024
-- Netlist written on Fri Dec 06 01:54:43 2024
-- Design is for device LCMXO2-256HC
-- Design is for package TQFP100
-- Design is for performance grade 4

-- entity lut4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut4 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut4 : ENTITY IS TRUE;

  end lut4;

  architecture Structure of lut4 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8080")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity lut40001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40001 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40001 : ENTITY IS TRUE;

  end lut40001;

  architecture Structure of lut40001 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"8888")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre : ENTITY IS TRUE;

  end vmuxregsre;

  architecture Structure of vmuxregsre is
    signal GATE: Std_logic;
  begin
    INST50: AND2
      port map (A=>SP, B=>CK, Z=>GATE);
    INST01: FL1S1D
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, CK=>GATE, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity vcc
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vcc is
    port (PWR1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vcc : ENTITY IS TRUE;

  end vcc;

  architecture Structure of vcc is
  begin
    INST1: VHI
      port map (Z=>PWR1);
  end Structure;

-- entity SLICE_0
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_0 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_0";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_M0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_M1_CLK	: VitalDelayType := 0 ns;
      tsetup_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_M0_CLK	: VitalDelayType := 0 ns;
      tsetup_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_M0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; M1: in Std_logic; 
          M0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_0 : ENTITY IS TRUE;

  end SLICE_0;

  architecture Structure of SLICE_0 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal M1_ipd 	: std_logic := 'X';
    signal M1_dly 	: std_logic := 'X';
    signal M0_ipd 	: std_logic := 'X';
    signal M0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
  begin
    I211: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I145: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I170: vmuxregsre
      port map (D0=>M1_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I171: vmuxregsre
      port map (D0=>M0_dly, D1=>VCCI, SD=>GNDI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(M1_ipd, M1, tipd_M1);
      VitalWireDelay(M0_ipd, M0, tipd_M0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(M1_dly, M1_ipd, tisd_M1_CLK);
      VitalSignalDelay(M0_dly, M0_ipd, tisd_M0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, M1_dly, 
      M0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_M1_CLK       	: x01 := '0';
    VARIABLE M1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_M0_CLK       	: x01 := '0';
    VARIABLE M0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => M1_dly,
        TestSignalName => "M1",
        TestDelay => tisd_M1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M1_CLK_noedge_posedge,
        SetupLow => tsetup_M1_CLK_noedge_posedge,
        HoldHigh => thold_M1_CLK_noedge_posedge,
        HoldLow => thold_M1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M1_CLK_TimingDatash,
        Violation => tviol_M1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => M0_dly,
        TestSignalName => "M0",
        TestDelay => tisd_M0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_M0_CLK_noedge_posedge,
        SetupLow => tsetup_M0_CLK_noedge_posedge,
        HoldHigh => thold_M0_CLK_noedge_posedge,
        HoldLow => thold_M0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => M0_CLK_TimingDatash,
        Violation => tviol_M0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40002
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40002 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40002 : ENTITY IS TRUE;

  end lut40002;

  architecture Structure of lut40002 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1111")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40003
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40003 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40003 : ENTITY IS TRUE;

  end lut40003;

  architecture Structure of lut40003 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"00FD")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_1
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_1 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_1";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
          C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
          F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
          Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_1 : ENTITY IS TRUE;

  end SLICE_1;

  architecture Structure of SLICE_1 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40003
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I162: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I166: lut40003
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    I168: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I172: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, A0_ipd, 
      DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_2
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_2 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_2";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_2 : ENTITY IS TRUE;

  end SLICE_2;

  architecture Structure of SLICE_2 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I164: lut40002
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I161: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I173: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I167: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, DI1_dly, DI0_dly, 
      CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40004
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40004 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40004 : ENTITY IS TRUE;

  end lut40004;

  architecture Structure of lut40004 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0101")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_3
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_3 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_3";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_3 : ENTITY IS TRUE;

  end SLICE_3;

  architecture Structure of SLICE_3 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vmuxregsre
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40004
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I163: lut40004
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I165: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    I169: vmuxregsre
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I174: vmuxregsre
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, DI1_dly, 
      DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40005
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40005 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40005 : ENTITY IS TRUE;

  end lut40005;

  architecture Structure of lut40005 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FF7F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40006
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40006 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40006 : ENTITY IS TRUE;

  end lut40006;

  architecture Structure of lut40006 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7F7F")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity vmuxregsre0007
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity vmuxregsre0007 is
    port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
          SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
          Q: out Std_logic);

    ATTRIBUTE Vital_Level0 OF vmuxregsre0007 : ENTITY IS TRUE;

  end vmuxregsre0007;

  architecture Structure of vmuxregsre0007 is
  begin
    INST01: FL1P3DX
      generic map (GSR => "DISABLED")
      port map (D0=>D0, D1=>D1, SP=>SP, CK=>CK, SD=>SD, CD=>LSR, Q=>Q);
  end Structure;

-- entity SLICE_4
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_4 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_4";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
          CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
          F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_4 : ENTITY IS TRUE;

  end SLICE_4;

  architecture Structure of SLICE_4 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    signal VCCI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component lut40005
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40006
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component vmuxregsre0007
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
  begin
    I207: lut40005
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I201: lut40006
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I203: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    I204: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40008
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40008 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40008 : ENTITY IS TRUE;

  end lut40008;

  architecture Structure of lut40008 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FF0B")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40009
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40009 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40009 : ENTITY IS TRUE;

  end lut40009;

  architecture Structure of lut40009 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"FF01")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_5
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_5 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_5";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_DI0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_CLK  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_CLK_Q1	 : VitalDelayType01 := (0 ns, 0 ns);
      ticd_CLK	: VitalDelayType := 0 ns;
      tisd_DI1_CLK	: VitalDelayType := 0 ns;
      tsetup_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI1_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tisd_DI0_CLK	: VitalDelayType := 0 ns;
      tsetup_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      thold_DI0_CLK_noedge_posedge	: VitalDelayType := 0 ns;
      tperiod_CLK 	: VitalDelayType := 0 ns;
      tpw_CLK_posedge	: VitalDelayType := 0 ns;
      tpw_CLK_negedge	: VitalDelayType := 0 ns);

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
          DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
          Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_5 : ENTITY IS TRUE;

  end SLICE_5;

  architecture Structure of SLICE_5 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal DI1_ipd 	: std_logic := 'X';
    signal DI1_dly 	: std_logic := 'X';
    signal DI0_ipd 	: std_logic := 'X';
    signal DI0_dly 	: std_logic := 'X';
    signal CLK_ipd 	: std_logic := 'X';
    signal CLK_dly 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal Q0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';
    signal Q1_out 	: std_logic := 'X';

    signal VCCI: Std_logic;
    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component vcc
      port (PWR1: out Std_logic);
    end component;
    component vmuxregsre0007
      port (D0: in Std_logic; D1: in Std_logic; SD: in Std_logic; 
            SP: in Std_logic; CK: in Std_logic; LSR: in Std_logic; 
            Q: out Std_logic);
    end component;
    component lut40008
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40009
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I208: lut40008
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I209: lut40009
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);
    I206: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI1_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q1_out);
    DRIVEVCC: vcc
      port map (PWR1=>VCCI);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I205: vmuxregsre0007
      port map (D0=>VCCI, D1=>DI0_dly, SD=>VCCI, SP=>VCCI, CK=>CLK_dly, 
                LSR=>GNDI, Q=>Q0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
      VitalWireDelay(DI1_ipd, DI1, tipd_DI1);
      VitalWireDelay(DI0_ipd, DI0, tipd_DI0);
      VitalWireDelay(CLK_ipd, CLK, tipd_CLK);
    END BLOCK;

    --  Setup and Hold DELAYs
    SignalDelay : BLOCK
    BEGIN
      VitalSignalDelay(DI1_dly, DI1_ipd, tisd_DI1_CLK);
      VitalSignalDelay(DI0_dly, DI0_ipd, tisd_DI0_CLK);
      VitalSignalDelay(CLK_dly, CLK_ipd, ticd_CLK);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, 
      B0_ipd, A0_ipd, DI1_dly, DI0_dly, CLK_dly, F0_out, Q0_out, F1_out, 
      Q1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q0_zd         	: std_logic := 'X';
    VARIABLE Q0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;
    VARIABLE Q1_zd         	: std_logic := 'X';
    VARIABLE Q1_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_DI1_CLK       	: x01 := '0';
    VARIABLE DI1_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_DI0_CLK       	: x01 := '0';
    VARIABLE DI0_CLK_TimingDatash	: VitalTimingDataType;
    VARIABLE tviol_CLK_CLK          	: x01 := '0';
    VARIABLE periodcheckinfo_CLK	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalSetupHoldCheck (
        TestSignal => DI1_dly,
        TestSignalName => "DI1",
        TestDelay => tisd_DI1_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI1_CLK_noedge_posedge,
        SetupLow => tsetup_DI1_CLK_noedge_posedge,
        HoldHigh => thold_DI1_CLK_noedge_posedge,
        HoldLow => thold_DI1_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI1_CLK_TimingDatash,
        Violation => tviol_DI1_CLK,
        MsgSeverity => warning);
      VitalSetupHoldCheck (
        TestSignal => DI0_dly,
        TestSignalName => "DI0",
        TestDelay => tisd_DI0_CLK,
        RefSignal => CLK_dly,
        RefSignalName => "CLK",
        RefDelay => ticd_CLK,
        SetupHigh => tsetup_DI0_CLK_noedge_posedge,
        SetupLow => tsetup_DI0_CLK_noedge_posedge,
        HoldHigh => thold_DI0_CLK_noedge_posedge,
        HoldLow => thold_DI0_CLK_noedge_posedge,
        CheckEnabled => TRUE,
        RefTransition => '/',
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        TimingData => DI0_CLK_TimingDatash,
        Violation => tviol_DI0_CLK,
        MsgSeverity => warning);
      VitalPeriodPulseCheck (
        TestSignal => CLK_ipd,
        TestSignalName => "CLK",
        Period => tperiod_CLK,
        PulseWidthHigh => tpw_CLK_posedge,
        PulseWidthLow => tpw_CLK_negedge,
        PeriodData => periodcheckinfo_CLK,
        Violation => tviol_CLK_CLK,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    F0_zd 	:= F0_out;
    Q0_zd 	:= Q0_out;
    F1_zd 	:= F1_out;
    Q1_zd 	:= Q1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q0, OutSignalName => "Q0", OutTemp => Q0_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q0,
                           PathCondition => TRUE)),
      GlitchData => Q0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => Q1, OutSignalName => "Q1", OutTemp => Q1_zd,
      Paths      => (0 => (InputChangeTime => CLK_dly'last_event,
                           PathDelay => tpd_CLK_Q1,
                           PathCondition => TRUE)),
      GlitchData => Q1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40010
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40010 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40010 : ENTITY IS TRUE;

  end lut40010;

  architecture Structure of lut40010 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0001")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_6
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_6 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_6";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_D0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_D0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_6 : ENTITY IS TRUE;

  end SLICE_6;

  architecture Structure of SLICE_6 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal D0_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component lut4
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I158: lut4
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I155: lut40010
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>D0_ipd, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(D0_ipd, D0, tipd_D0);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, D0_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => D0_ipd'last_event,
                           PathDelay => tpd_D0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40011
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40011 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40011 : ENTITY IS TRUE;

  end lut40011;

  architecture Structure of lut40011 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"4444")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_7
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_7 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_7";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_7 : ENTITY IS TRUE;

  end SLICE_7;

  architecture Structure of SLICE_7 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40010
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40011
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I154: lut40010
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I149: lut40011
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, 
      F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40012
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40012 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40012 : ENTITY IS TRUE;

  end lut40012;

  architecture Structure of lut40012 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"CCCE")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity lut40013
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40013 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40013 : ENTITY IS TRUE;

  end lut40013;

  architecture Structure of lut40013 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0808")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_8
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_8 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_8";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_8 : ENTITY IS TRUE;

  end SLICE_8;

  architecture Structure of SLICE_8 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal C0_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40012
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40013
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I157: lut40012
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I160: lut40013
      port map (A=>A0_ipd, B=>B0_ipd, C=>C0_ipd, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(C0_ipd, C0, tipd_C0);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, C0_ipd, B0_ipd, 
      A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => C0_ipd'last_event,
                           PathDelay => tpd_C0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40014
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40014 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40014 : ENTITY IS TRUE;

  end lut40014;

  architecture Structure of lut40014 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"0101")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_9
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_9 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_9";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_9 : ENTITY IS TRUE;

  end SLICE_9;

  architecture Structure of SLICE_9 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40002
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40014
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I148: lut40014
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I147: lut40002
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, 
      F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40015
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40015 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40015 : ENTITY IS TRUE;

  end lut40015;

  architecture Structure of lut40015 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"1010")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_10
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_10 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_10";

      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
          B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
          F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_10 : ENTITY IS TRUE;

  end SLICE_10;

  architecture Structure of SLICE_10 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40001
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40015
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I159: lut40015
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I146: lut40001
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, 
      F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40016
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40016 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40016 : ENTITY IS TRUE;

  end lut40016;

  architecture Structure of lut40016 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7777")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_11
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_11 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_11";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_11 : ENTITY IS TRUE;

  end SLICE_11;

  architecture Structure of SLICE_11 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I181: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I182: lut40016
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity lut40017
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity lut40017 is
    port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
          Z: out Std_logic);

    ATTRIBUTE Vital_Level0 OF lut40017 : ENTITY IS TRUE;

  end lut40017;

  architecture Structure of lut40017 is
  begin
    INST10: ROM16X1A
      generic map (initval => X"7000")
      port map (AD0=>A, AD1=>B, AD2=>C, AD3=>D, DO0=>Z);
  end Structure;

-- entity SLICE_12
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_12 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_12";

      tipd_D1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_C1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_D1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_C1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
          A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
          F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_12 : ENTITY IS TRUE;

  end SLICE_12;

  architecture Structure of SLICE_12 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal D1_ipd 	: std_logic := 'X';
    signal C1_ipd 	: std_logic := 'X';
    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40011
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
    component lut40017
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I210: lut40017
      port map (A=>A1_ipd, B=>B1_ipd, C=>C1_ipd, D=>D1_ipd, Z=>F1_out);
    I214: lut40011
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(D1_ipd, D1, tipd_D1);
      VitalWireDelay(C1_ipd, C1, tipd_C1);
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (D1_ipd, C1_ipd, B1_ipd, A1_ipd, B0_ipd, A0_ipd, 
      F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => D1_ipd'last_event,
                           PathDelay => tpd_D1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => C1_ipd'last_event,
                           PathDelay => tpd_C1_F1,
                           PathCondition => TRUE),
                     2 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     3 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_13
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_13 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_13";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_13 : ENTITY IS TRUE;

  end SLICE_13;

  architecture Structure of SLICE_13 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I175: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I180: lut40016
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_14
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_14 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_14";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_14 : ENTITY IS TRUE;

  end SLICE_14;

  architecture Structure of SLICE_14 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I176: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I179: lut40016
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SLICE_15
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SLICE_15 is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SLICE_15";

      tipd_B1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A1  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_B0  	: VitalDelayType01 := (0 ns, 0 ns);
      tipd_A0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_B1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1_F1	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_B0_F0	 : VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0_F0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
          A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF SLICE_15 : ENTITY IS TRUE;

  end SLICE_15;

  architecture Structure of SLICE_15 is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal B1_ipd 	: std_logic := 'X';
    signal A1_ipd 	: std_logic := 'X';
    signal B0_ipd 	: std_logic := 'X';
    signal A0_ipd 	: std_logic := 'X';
    signal F0_out 	: std_logic := 'X';
    signal F1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component lut40016
      port (A: in Std_logic; B: in Std_logic; C: in Std_logic; D: in Std_logic; 
            Z: out Std_logic);
    end component;
  begin
    I177: lut40016
      port map (A=>A1_ipd, B=>B1_ipd, C=>GNDI, D=>GNDI, Z=>F1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);
    I178: lut40016
      port map (A=>A0_ipd, B=>B0_ipd, C=>GNDI, D=>GNDI, Z=>F0_out);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(B1_ipd, B1, tipd_B1);
      VitalWireDelay(A1_ipd, A1, tipd_A1);
      VitalWireDelay(B0_ipd, B0, tipd_B0);
      VitalWireDelay(A0_ipd, A0, tipd_A0);
    END BLOCK;

    VitalBehavior : PROCESS (B1_ipd, A1_ipd, B0_ipd, A0_ipd, F0_out, F1_out)
    VARIABLE F0_zd         	: std_logic := 'X';
    VARIABLE F0_GlitchData 	: VitalGlitchDataType;
    VARIABLE F1_zd         	: std_logic := 'X';
    VARIABLE F1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    F0_zd 	:= F0_out;
    F1_zd 	:= F1_out;

    VitalPathDelay01 (
      OutSignal => F0, OutSignalName => "F0", OutTemp => F0_zd,
      Paths      => (0 => (InputChangeTime => B0_ipd'last_event,
                           PathDelay => tpd_B0_F0,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A0_ipd'last_event,
                           PathDelay => tpd_A0_F0,
                           PathCondition => TRUE)),
      GlitchData => F0_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);
    VitalPathDelay01 (
      OutSignal => F1, OutSignalName => "F1", OutTemp => F1_zd,
      Paths      => (0 => (InputChangeTime => B1_ipd'last_event,
                           PathDelay => tpd_B1_F1,
                           PathCondition => TRUE),
                     1 => (InputChangeTime => A1_ipd'last_event,
                           PathDelay => tpd_A1_F1,
                           PathCondition => TRUE)),
      GlitchData => F1_GlitchData,
      Mode       => ondetect, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity INV_RDB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_RDB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_RDB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVRD	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVRD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_RDB : ENTITY IS TRUE;

  end INV_RDB;

  architecture Structure of INV_RDB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVRD_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I139: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVRD_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVRD_out)
    VARIABLE INVRD_zd         	: std_logic := 'X';
    VARIABLE INVRD_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVRD_zd 	:= INVRD_out;

    VitalPathDelay01 (
      OutSignal => INVRD, OutSignalName => "INVRD", OutTemp => INVRD_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVRD,
                           PathCondition => TRUE)),
      GlitchData => INVRD_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0018
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0018 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0018 : ENTITY IS TRUE;

  end xo2iobuf0018;

  architecture Structure of xo2iobuf0018 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity PLDCLKB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity PLDCLKB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "PLDCLKB";

      tipd_PLDCLKS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PLDCLKS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_PLDCLKS 	: VitalDelayType := 0 ns;
      tpw_PLDCLKS_posedge	: VitalDelayType := 0 ns;
      tpw_PLDCLKS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; PLDCLKS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF PLDCLKB : ENTITY IS TRUE;

  end PLDCLKB;

  architecture Structure of PLDCLKB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal PLDCLKS_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I116: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>PLDCLKS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PLDCLKS_ipd, PLDCLKS, tipd_PLDCLKS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, PLDCLKS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_PLDCLKS_PLDCLKS          	: x01 := '0';
    VARIABLE periodcheckinfo_PLDCLKS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => PLDCLKS_ipd,
        TestSignalName => "PLDCLKS",
        Period => tperiod_PLDCLKS,
        PulseWidthHigh => tpw_PLDCLKS_posedge,
        PulseWidthLow => tpw_PLDCLKS_negedge,
        PeriodData => periodcheckinfo_PLDCLKS,
        Violation => tviol_PLDCLKS_PLDCLKS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => PLDCLKS_ipd'last_event,
                           PathDelay => tpd_PLDCLKS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_CPUB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_CPUB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_CPUB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVCPU	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVCPU: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_CPUB : ENTITY IS TRUE;

  end INV_CPUB;

  architecture Structure of INV_CPUB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVCPU_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I219: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVCPU_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVCPU_out)
    VARIABLE INVCPU_zd         	: std_logic := 'X';
    VARIABLE INVCPU_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVCPU_zd 	:= INVCPU_out;

    VitalPathDelay01 (
      OutSignal => INVCPU, OutSignalName => "INVCPU", OutTemp => INVCPU_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVCPU,
                           PathCondition => TRUE)),
      GlitchData => INVCPU_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_IACK_AVECB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_IACK_AVECB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_IACK_AVECB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVIACKAVEC	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVIACKAVEC: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_IACK_AVECB : ENTITY IS TRUE;

  end INV_IACK_AVECB;

  architecture Structure of INV_IACK_AVECB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVIACKAVEC_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I218: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVIACKAVEC_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVIACKAVEC_out)
    VARIABLE INVIACKAVEC_zd         	: std_logic := 'X';
    VARIABLE INVIACKAVEC_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVIACKAVEC_zd 	:= INVIACKAVEC_out;

    VitalPathDelay01 (

        OutSignal => INVIACKAVEC, OutSignalName => "INVIACKAVEC", OutTemp => INVIACKAVEC_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVIACKAVEC,
                           PathCondition => TRUE)),
      GlitchData => INVIACKAVEC_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_MPU_DSACK0B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_MPU_DSACK0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_MPU_DSACK0B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVMPUDSACK0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVMPUDSACK0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_MPU_DSACK0B : ENTITY IS TRUE;

  end INV_MPU_DSACK0B;

  architecture Structure of INV_MPU_DSACK0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVMPUDSACK0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I217: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVMPUDSACK0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVMPUDSACK0_out)
    VARIABLE INVMPUDSACK0_zd         	: std_logic := 'X';
    VARIABLE INVMPUDSACK0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVMPUDSACK0_zd 	:= INVMPUDSACK0_out;

    VitalPathDelay01 (

        OutSignal => INVMPUDSACK0, OutSignalName => "INVMPUDSACK0", OutTemp => INVMPUDSACK0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVMPUDSACK0,
                           PathCondition => TRUE)),
      GlitchData => INVMPUDSACK0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_MPU_DSACK1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_MPU_DSACK1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_MPU_DSACK1B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVMPUDSACK1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVMPUDSACK1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_MPU_DSACK1B : ENTITY IS TRUE;

  end INV_MPU_DSACK1B;

  architecture Structure of INV_MPU_DSACK1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVMPUDSACK1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I216: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVMPUDSACK1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVMPUDSACK1_out)
    VARIABLE INVMPUDSACK1_zd         	: std_logic := 'X';
    VARIABLE INVMPUDSACK1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVMPUDSACK1_zd 	:= INVMPUDSACK1_out;

    VitalPathDelay01 (

        OutSignal => INVMPUDSACK1, OutSignalName => "INVMPUDSACK1", OutTemp => INVMPUDSACK1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVMPUDSACK1,
                           PathCondition => TRUE)),
      GlitchData => INVMPUDSACK1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRUUB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRUUB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRUUB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRUU	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRUU: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRUUB : ENTITY IS TRUE;

  end INV_WRUUB;

  architecture Structure of INV_WRUUB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRUU_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I183: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRUU_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRUU_out)
    VARIABLE INVWRUU_zd         	: std_logic := 'X';
    VARIABLE INVWRUU_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRUU_zd 	:= INVWRUU_out;

    VitalPathDelay01 (
      OutSignal => INVWRUU, OutSignalName => "INVWRUU", OutTemp => INVWRUU_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRUU,
                           PathCondition => TRUE)),
      GlitchData => INVWRUU_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRUMB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRUMB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRUMB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRUM	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRUM: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRUMB : ENTITY IS TRUE;

  end INV_WRUMB;

  architecture Structure of INV_WRUMB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRUM_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I184: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRUM_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRUM_out)
    VARIABLE INVWRUM_zd         	: std_logic := 'X';
    VARIABLE INVWRUM_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRUM_zd 	:= INVWRUM_out;

    VitalPathDelay01 (
      OutSignal => INVWRUM, OutSignalName => "INVWRUM", OutTemp => INVWRUM_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRUM,
                           PathCondition => TRUE)),
      GlitchData => INVWRUM_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRLMB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRLMB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRLMB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRLM	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRLM: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRLMB : ENTITY IS TRUE;

  end INV_WRLMB;

  architecture Structure of INV_WRLMB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRLM_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I138: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRLM_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRLM_out)
    VARIABLE INVWRLM_zd         	: std_logic := 'X';
    VARIABLE INVWRLM_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRLM_zd 	:= INVWRLM_out;

    VitalPathDelay01 (
      OutSignal => INVWRLM, OutSignalName => "INVWRLM", OutTemp => INVWRLM_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRLM,
                           PathCondition => TRUE)),
      GlitchData => INVWRLM_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRLLB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRLLB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRLLB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRLL	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRLL: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRLLB : ENTITY IS TRUE;

  end INV_WRLLB;

  architecture Structure of INV_WRLLB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRLL_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I143: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRLL_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRLL_out)
    VARIABLE INVWRLL_zd         	: std_logic := 'X';
    VARIABLE INVWRLL_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRLL_zd 	:= INVWRLL_out;

    VitalPathDelay01 (
      OutSignal => INVWRLL, OutSignalName => "INVWRLL", OutTemp => INVWRLL_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRLL,
                           PathCondition => TRUE)),
      GlitchData => INVWRLL_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRUB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRUB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRUB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRU	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRU: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRUB : ENTITY IS TRUE;

  end INV_WRUB;

  architecture Structure of INV_WRUB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRU_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I142: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRU_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRU_out)
    VARIABLE INVWRU_zd         	: std_logic := 'X';
    VARIABLE INVWRU_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRU_zd 	:= INVWRU_out;

    VitalPathDelay01 (
      OutSignal => INVWRU, OutSignalName => "INVWRU", OutTemp => INVWRU_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRU,
                           PathCondition => TRUE)),
      GlitchData => INVWRU_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRLB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRLB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRLB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWRL	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWRL: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRLB : ENTITY IS TRUE;

  end INV_WRLB;

  architecture Structure of INV_WRLB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWRL_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I141: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWRL_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWRL_out)
    VARIABLE INVWRL_zd         	: std_logic := 'X';
    VARIABLE INVWRL_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWRL_zd 	:= INVWRL_out;

    VitalPathDelay01 (
      OutSignal => INVWRL, OutSignalName => "INVWRL", OutTemp => INVWRL_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWRL,
                           PathCondition => TRUE)),
      GlitchData => INVWRL_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_WRB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_WRB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_WRB";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_INVWR	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; INVWR: out Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_WRB : ENTITY IS TRUE;

  end INV_WRB;

  architecture Structure of INV_WRB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal INVWR_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component gnd
      port (PWR0: out Std_logic);
    end component;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
  begin
    I140: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>INVWR_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, INVWR_out)
    VARIABLE INVWR_zd         	: std_logic := 'X';
    VARIABLE INVWR_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    INVWR_zd 	:= INVWR_out;

    VitalPathDelay01 (
      OutSignal => INVWR, OutSignalName => "INVWR", OutTemp => INVWR_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_INVWR,
                           PathCondition => TRUE)),
      GlitchData => INVWR_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SIZ1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SIZ1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SIZ1B";

      tipd_SIZ1S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_SIZ1S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_SIZ1S 	: VitalDelayType := 0 ns;
      tpw_SIZ1S_posedge	: VitalDelayType := 0 ns;
      tpw_SIZ1S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; SIZ1S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF SIZ1B : ENTITY IS TRUE;

  end SIZ1B;

  architecture Structure of SIZ1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal SIZ1S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I236: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>SIZ1S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(SIZ1S_ipd, SIZ1S, tipd_SIZ1S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, SIZ1S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_SIZ1S_SIZ1S          	: x01 := '0';
    VARIABLE periodcheckinfo_SIZ1S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => SIZ1S_ipd,
        TestSignalName => "SIZ1S",
        Period => tperiod_SIZ1S,
        PulseWidthHigh => tpw_SIZ1S_posedge,
        PulseWidthLow => tpw_SIZ1S_negedge,
        PeriodData => periodcheckinfo_SIZ1S,
        Violation => tviol_SIZ1S_SIZ1S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => SIZ1S_ipd'last_event,
                           PathDelay => tpd_SIZ1S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity SIZ0B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity SIZ0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "SIZ0B";

      tipd_SIZ0S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_SIZ0S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_SIZ0S 	: VitalDelayType := 0 ns;
      tpw_SIZ0S_posedge	: VitalDelayType := 0 ns;
      tpw_SIZ0S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; SIZ0S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF SIZ0B : ENTITY IS TRUE;

  end SIZ0B;

  architecture Structure of SIZ0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal SIZ0S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I237: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>SIZ0S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(SIZ0S_ipd, SIZ0S, tipd_SIZ0S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, SIZ0S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_SIZ0S_SIZ0S          	: x01 := '0';
    VARIABLE periodcheckinfo_SIZ0S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => SIZ0S_ipd,
        TestSignalName => "SIZ0S",
        Period => tperiod_SIZ0S,
        PulseWidthHigh => tpw_SIZ0S_posedge,
        PulseWidthLow => tpw_SIZ0S_negedge,
        PeriodData => periodcheckinfo_SIZ0S,
        Violation => tviol_SIZ0S_SIZ0S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => SIZ0S_ipd'last_event,
                           PathDelay => tpd_SIZ0S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_SEL_0B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_SEL_0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_SEL_0B";

      tipd_INVSEL0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVSEL0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVSEL0 	: VitalDelayType := 0 ns;
      tpw_INVSEL0_posedge	: VitalDelayType := 0 ns;
      tpw_INVSEL0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVSEL0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_SEL_0B : ENTITY IS TRUE;

  end INV_SEL_0B;

  architecture Structure of INV_SEL_0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVSEL0_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I225: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVSEL0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVSEL0_ipd, INVSEL0, tipd_INVSEL0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVSEL0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVSEL0_INVSEL0          	: x01 := '0';
    VARIABLE periodcheckinfo_INVSEL0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVSEL0_ipd,
        TestSignalName => "INVSEL0",
        Period => tperiod_INVSEL0,
        PulseWidthHigh => tpw_INVSEL0_posedge,
        PulseWidthLow => tpw_INVSEL0_negedge,
        PeriodData => periodcheckinfo_INVSEL0,
        Violation => tviol_INVSEL0_INVSEL0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVSEL0_ipd'last_event,
                           PathDelay => tpd_INVSEL0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity WAIT2B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity WAIT2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "WAIT2B";

      tipd_WAIT2S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_WAIT2S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_WAIT2S 	: VitalDelayType := 0 ns;
      tpw_WAIT2S_posedge	: VitalDelayType := 0 ns;
      tpw_WAIT2S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; WAIT2S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF WAIT2B : ENTITY IS TRUE;

  end WAIT2B;

  architecture Structure of WAIT2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal WAIT2S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I221: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>WAIT2S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(WAIT2S_ipd, WAIT2S, tipd_WAIT2S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, WAIT2S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_WAIT2S_WAIT2S          	: x01 := '0';
    VARIABLE periodcheckinfo_WAIT2S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => WAIT2S_ipd,
        TestSignalName => "WAIT2S",
        Period => tperiod_WAIT2S,
        PulseWidthHigh => tpw_WAIT2S_posedge,
        PulseWidthLow => tpw_WAIT2S_negedge,
        PeriodData => periodcheckinfo_WAIT2S,
        Violation => tviol_WAIT2S_WAIT2S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => WAIT2S_ipd'last_event,
                           PathDelay => tpd_WAIT2S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_SEL_4toBB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_SEL_4toBB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_SEL_4toBB";

      tipd_INVSEL4toB  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVSEL4toB_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVSEL4toB 	: VitalDelayType := 0 ns;
      tpw_INVSEL4toB_posedge	: VitalDelayType := 0 ns;
      tpw_INVSEL4toB_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVSEL4toB: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_SEL_4toBB : ENTITY IS TRUE;

  end INV_SEL_4toBB;

  architecture Structure of INV_SEL_4toBB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVSEL4toB_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I227: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVSEL4toB_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVSEL4toB_ipd, INVSEL4toB, tipd_INVSEL4toB);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVSEL4toB_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVSEL4toB_INVSEL4toB          	: x01 := '0';
    VARIABLE periodcheckinfo_INVSEL4toB	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVSEL4toB_ipd,
        TestSignalName => "INVSEL4toB",
        Period => tperiod_INVSEL4toB,
        PulseWidthHigh => tpw_INVSEL4toB_posedge,
        PulseWidthLow => tpw_INVSEL4toB_negedge,
        PeriodData => periodcheckinfo_INVSEL4toB,
        Violation => tviol_INVSEL4toB_INVSEL4toB,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVSEL4toB_ipd'last_event,
                           PathDelay => tpd_INVSEL4toB_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_FC0B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_FC0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_FC0B";

      tipd_INVFC0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVFC0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVFC0 	: VitalDelayType := 0 ns;
      tpw_INVFC0_posedge	: VitalDelayType := 0 ns;
      tpw_INVFC0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVFC0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_FC0B : ENTITY IS TRUE;

  end INV_FC0B;

  architecture Structure of INV_FC0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVFC0_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I220: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVFC0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVFC0_ipd, INVFC0, tipd_INVFC0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVFC0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVFC0_INVFC0          	: x01 := '0';
    VARIABLE periodcheckinfo_INVFC0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVFC0_ipd,
        TestSignalName => "INVFC0",
        Period => tperiod_INVFC0,
        PulseWidthHigh => tpw_INVFC0_posedge,
        PulseWidthLow => tpw_INVFC0_negedge,
        PeriodData => periodcheckinfo_INVFC0,
        Violation => tviol_INVFC0_INVFC0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVFC0_ipd'last_event,
                           PathDelay => tpd_INVFC0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_FC2B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_FC2B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_FC2B";

      tipd_INVFC2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVFC2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVFC2 	: VitalDelayType := 0 ns;
      tpw_INVFC2_posedge	: VitalDelayType := 0 ns;
      tpw_INVFC2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVFC2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_FC2B : ENTITY IS TRUE;

  end INV_FC2B;

  architecture Structure of INV_FC2B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVFC2_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I222: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVFC2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVFC2_ipd, INVFC2, tipd_INVFC2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVFC2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVFC2_INVFC2          	: x01 := '0';
    VARIABLE periodcheckinfo_INVFC2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVFC2_ipd,
        TestSignalName => "INVFC2",
        Period => tperiod_INVFC2,
        PulseWidthHigh => tpw_INVFC2_posedge,
        PulseWidthLow => tpw_INVFC2_negedge,
        PeriodData => periodcheckinfo_INVFC2,
        Violation => tviol_INVFC2_INVFC2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVFC2_ipd'last_event,
                           PathDelay => tpd_INVFC2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_FC1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_FC1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_FC1B";

      tipd_INVFC1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVFC1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVFC1 	: VitalDelayType := 0 ns;
      tpw_INVFC1_posedge	: VitalDelayType := 0 ns;
      tpw_INVFC1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVFC1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_FC1B : ENTITY IS TRUE;

  end INV_FC1B;

  architecture Structure of INV_FC1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVFC1_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I223: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVFC1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVFC1_ipd, INVFC1, tipd_INVFC1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVFC1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVFC1_INVFC1          	: x01 := '0';
    VARIABLE periodcheckinfo_INVFC1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVFC1_ipd,
        TestSignalName => "INVFC1",
        Period => tperiod_INVFC1,
        PulseWidthHigh => tpw_INVFC1_posedge,
        PulseWidthLow => tpw_INVFC1_negedge,
        PeriodData => periodcheckinfo_INVFC1,
        Violation => tviol_INVFC1_INVFC1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVFC1_ipd'last_event,
                           PathDelay => tpd_INVFC1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_SEL_FB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_SEL_FB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_SEL_FB";

      tipd_INVSELF  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVSELF_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVSELF 	: VitalDelayType := 0 ns;
      tpw_INVSELF_posedge	: VitalDelayType := 0 ns;
      tpw_INVSELF_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVSELF: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_SEL_FB : ENTITY IS TRUE;

  end INV_SEL_FB;

  architecture Structure of INV_SEL_FB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVSELF_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I224: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVSELF_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVSELF_ipd, INVSELF, tipd_INVSELF);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVSELF_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVSELF_INVSELF          	: x01 := '0';
    VARIABLE periodcheckinfo_INVSELF	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVSELF_ipd,
        TestSignalName => "INVSELF",
        Period => tperiod_INVSELF,
        PulseWidthHigh => tpw_INVSELF_posedge,
        PulseWidthLow => tpw_INVSELF_negedge,
        PeriodData => periodcheckinfo_INVSELF,
        Violation => tviol_INVSELF_INVSELF,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVSELF_ipd'last_event,
                           PathDelay => tpd_INVSELF_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_SEL_CB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_SEL_CB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_SEL_CB";

      tipd_INVSELC  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVSELC_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVSELC 	: VitalDelayType := 0 ns;
      tpw_INVSELC_posedge	: VitalDelayType := 0 ns;
      tpw_INVSELC_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVSELC: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_SEL_CB : ENTITY IS TRUE;

  end INV_SEL_CB;

  architecture Structure of INV_SEL_CB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVSELC_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I226: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVSELC_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVSELC_ipd, INVSELC, tipd_INVSELC);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVSELC_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVSELC_INVSELC          	: x01 := '0';
    VARIABLE periodcheckinfo_INVSELC	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVSELC_ipd,
        TestSignalName => "INVSELC",
        Period => tperiod_INVSELC,
        PulseWidthHigh => tpw_INVSELC_posedge,
        PulseWidthLow => tpw_INVSELC_negedge,
        PeriodData => periodcheckinfo_INVSELC,
        Violation => tviol_INVSELC_INVSELC,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVSELC_ipd'last_event,
                           PathDelay => tpd_INVSELC_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity WAIT1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity WAIT1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "WAIT1B";

      tipd_WAIT1S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_WAIT1S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_WAIT1S 	: VitalDelayType := 0 ns;
      tpw_WAIT1S_posedge	: VitalDelayType := 0 ns;
      tpw_WAIT1S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; WAIT1S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF WAIT1B : ENTITY IS TRUE;

  end WAIT1B;

  architecture Structure of WAIT1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal WAIT1S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I228: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>WAIT1S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(WAIT1S_ipd, WAIT1S, tipd_WAIT1S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, WAIT1S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_WAIT1S_WAIT1S          	: x01 := '0';
    VARIABLE periodcheckinfo_WAIT1S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => WAIT1S_ipd,
        TestSignalName => "WAIT1S",
        Period => tperiod_WAIT1S,
        PulseWidthHigh => tpw_WAIT1S_posedge,
        PulseWidthLow => tpw_WAIT1S_negedge,
        PeriodData => periodcheckinfo_WAIT1S,
        Violation => tviol_WAIT1S_WAIT1S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => WAIT1S_ipd'last_event,
                           PathDelay => tpd_WAIT1S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_SEL_1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_SEL_1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_SEL_1B";

      tipd_INVSEL1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVSEL1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVSEL1 	: VitalDelayType := 0 ns;
      tpw_INVSEL1_posedge	: VitalDelayType := 0 ns;
      tpw_INVSEL1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVSEL1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_SEL_1B : ENTITY IS TRUE;

  end INV_SEL_1B;

  architecture Structure of INV_SEL_1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVSEL1_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I229: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVSEL1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVSEL1_ipd, INVSEL1, tipd_INVSEL1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVSEL1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVSEL1_INVSEL1          	: x01 := '0';
    VARIABLE periodcheckinfo_INVSEL1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVSEL1_ipd,
        TestSignalName => "INVSEL1",
        Period => tperiod_INVSEL1,
        PulseWidthHigh => tpw_INVSEL1_posedge,
        PulseWidthLow => tpw_INVSEL1_negedge,
        PeriodData => periodcheckinfo_INVSEL1,
        Violation => tviol_INVSEL1_INVSEL1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVSEL1_ipd'last_event,
                           PathDelay => tpd_INVSEL1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_ASB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_ASB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_ASB";

      tipd_INVAS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVAS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVAS 	: VitalDelayType := 0 ns;
      tpw_INVAS_posedge	: VitalDelayType := 0 ns;
      tpw_INVAS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVAS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_ASB : ENTITY IS TRUE;

  end INV_ASB;

  architecture Structure of INV_ASB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVAS_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I230: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVAS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVAS_ipd, INVAS, tipd_INVAS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVAS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVAS_INVAS          	: x01 := '0';
    VARIABLE periodcheckinfo_INVAS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVAS_ipd,
        TestSignalName => "INVAS",
        Period => tperiod_INVAS,
        PulseWidthHigh => tpw_INVAS_posedge,
        PulseWidthLow => tpw_INVAS_negedge,
        PeriodData => periodcheckinfo_INVAS,
        Violation => tviol_INVAS_INVAS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVAS_ipd'last_event,
                           PathDelay => tpd_INVAS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity A1B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity A1B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "A1B";

      tipd_A1S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A1S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_A1S 	: VitalDelayType := 0 ns;
      tpw_A1S_posedge	: VitalDelayType := 0 ns;
      tpw_A1S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; A1S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF A1B : ENTITY IS TRUE;

  end A1B;

  architecture Structure of A1B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal A1S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I118: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>A1S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A1S_ipd, A1S, tipd_A1S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, A1S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_A1S_A1S          	: x01 := '0';
    VARIABLE periodcheckinfo_A1S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => A1S_ipd,
        TestSignalName => "A1S",
        Period => tperiod_A1S,
        PulseWidthHigh => tpw_A1S_posedge,
        PulseWidthLow => tpw_A1S_negedge,
        PeriodData => periodcheckinfo_A1S,
        Violation => tviol_A1S_A1S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => A1S_ipd'last_event,
                           PathDelay => tpd_A1S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity A0B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity A0B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "A0B";

      tipd_A0S  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_A0S_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_A0S 	: VitalDelayType := 0 ns;
      tpw_A0S_posedge	: VitalDelayType := 0 ns;
      tpw_A0S_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; A0S: in Std_logic);

    ATTRIBUTE Vital_Level0 OF A0B : ENTITY IS TRUE;

  end A0B;

  architecture Structure of A0B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal A0S_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I117: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>A0S_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(A0S_ipd, A0S, tipd_A0S);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, A0S_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_A0S_A0S          	: x01 := '0';
    VARIABLE periodcheckinfo_A0S	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => A0S_ipd,
        TestSignalName => "A0S",
        Period => tperiod_A0S,
        PulseWidthHigh => tpw_A0S_posedge,
        PulseWidthLow => tpw_A0S_negedge,
        PeriodData => periodcheckinfo_A0S,
        Violation => tviol_A0S_A0S,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => A0S_ipd'last_event,
                           PathDelay => tpd_A0S_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity INV_DSB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity INV_DSB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "INV_DSB";

      tipd_INVDS  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_INVDS_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_INVDS 	: VitalDelayType := 0 ns;
      tpw_INVDS_posedge	: VitalDelayType := 0 ns;
      tpw_INVDS_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; INVDS: in Std_logic);

    ATTRIBUTE Vital_Level0 OF INV_DSB : ENTITY IS TRUE;

  end INV_DSB;

  architecture Structure of INV_DSB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal INVDS_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I121: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>INVDS_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(INVDS_ipd, INVDS, tipd_INVDS);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, INVDS_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_INVDS_INVDS          	: x01 := '0';
    VARIABLE periodcheckinfo_INVDS	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => INVDS_ipd,
        TestSignalName => "INVDS",
        Period => tperiod_INVDS,
        PulseWidthHigh => tpw_INVDS_posedge,
        PulseWidthLow => tpw_INVDS_negedge,
        PeriodData => periodcheckinfo_INVDS,
        Violation => tviol_INVDS_INVDS,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => INVDS_ipd'last_event,
                           PathDelay => tpd_INVDS_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity R_WB
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity R_WB is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "R_WB";

      tipd_RW  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_RW_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_RW 	: VitalDelayType := 0 ns;
      tpw_RW_posedge	: VitalDelayType := 0 ns;
      tpw_RW_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; RW: in Std_logic);

    ATTRIBUTE Vital_Level0 OF R_WB : ENTITY IS TRUE;

  end R_WB;

  architecture Structure of R_WB is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal RW_ipd 	: std_logic := 'X';

    component xo2iobuf0018
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    I122: xo2iobuf0018
      port map (Z=>PADDI_out, PAD=>RW_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(RW_ipd, RW, tipd_RW);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, RW_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_RW_RW          	: x01 := '0';
    VARIABLE periodcheckinfo_RW	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => RW_ipd,
        TestSignalName => "RW",
        Period => tperiod_RW,
        PulseWidthHigh => tpw_RW_posedge,
        PulseWidthLow => tpw_RW_negedge,
        PeriodData => periodcheckinfo_RW,
        Violation => tviol_RW_RW,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => RW_ipd'last_event,
                           PathDelay => tpd_RW_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity ARBITER_TOP
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity ARBITER_TOP is
    port (INV_WRL: out Std_logic; INV_WRU: out Std_logic; 
          INV_WRLL: out Std_logic; INV_WRLM: out Std_logic; 
          INV_WRUM: out Std_logic; INV_WRUU: out Std_logic; 
          PLDCLK: in Std_logic; INV_MPU_DSACK1: out Std_logic; 
          INV_AS: in Std_logic; INV_SEL_1: in Std_logic; 
          INV_MPU_DSACK0: out Std_logic; WAIT1: in Std_logic; 
          INV_SEL_C: in Std_logic; INV_IACK_AVEC: out Std_logic; 
          INV_CPU: out Std_logic; INV_DS: in Std_logic; INV_WR: out Std_logic; 
          R_W: in Std_logic; INV_RD: out Std_logic; A0: in Std_logic; 
          SIZ1: in Std_logic; SIZ0: in Std_logic; A1: in Std_logic; 
          INV_SEL_F: in Std_logic; INV_FC2: in Std_logic; 
          INV_FC1: in Std_logic; INV_FC0: in Std_logic; 
          INV_SEL_4toB: in Std_logic; WAIT2: in Std_logic; 
          INV_SEL_0: in Std_logic);



  end ARBITER_TOP;

  architecture Structure of ARBITER_TOP is
    signal N_152: Std_logic;
    signal N_52: Std_logic;
    signal N_153: Std_logic;
    signal N_173: Std_logic;
    signal N_158: Std_logic;
    signal N_99: Std_logic;
    signal N_82: Std_logic;
    signal I_PLDCLK: Std_logic;
    signal N_116: Std_logic;
    signal N_45: Std_logic;
    signal N_145: Std_logic;
    signal N_85: Std_logic;
    signal N_98: Std_logic;
    signal N_106: Std_logic;
    signal N_157: Std_logic;
    signal UMDS: Std_logic;
    signal LDS: Std_logic;
    signal N_128: Std_logic;
    signal N_129: Std_logic;
    signal N_96: Std_logic;
    signal UDS: Std_logic;
    signal LMDS: Std_logic;
    signal N_130: Std_logic;
    signal N_131: Std_logic;
    signal N_97: Std_logic;
    signal UUDS: Std_logic;
    signal LLDS: Std_logic;
    signal N_132: Std_logic;
    signal N_133: Std_logic;
    signal N_150: Std_logic;
    signal N_147: Std_logic;
    signal N_154: Std_logic;
    signal N_164: Std_logic;
    signal N_151: Std_logic;
    signal N_169: Std_logic;
    signal N_170: Std_logic;
    signal N_75: Std_logic;
    signal N_56: Std_logic;
    signal N_146: Std_logic;
    signal N_72: Std_logic;
    signal N_168: Std_logic;
    signal N_166: Std_logic;
    signal N_171: Std_logic;
    signal N_172: Std_logic;
    signal N_40: Std_logic;
    signal N_113: Std_logic;
    signal N_95: Std_logic;
    signal N_117: Std_logic;
    signal N_118: Std_logic;
    signal N_103: Std_logic;
    signal N_102: Std_logic;
    signal N_127: Std_logic;
    signal N_126: Std_logic;
    signal N_156: Std_logic;
    signal N_64: Std_logic;
    signal N_155: Std_logic;
    signal N_120: Std_logic;
    signal N_125: Std_logic;
    signal N_121: Std_logic;
    signal N_124: Std_logic;
    signal N_122: Std_logic;
    signal N_123: Std_logic;
    signal VCCI: Std_logic;
    component SLICE_0
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; M1: in Std_logic; 
            M0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_1
      port (B1: in Std_logic; A1: in Std_logic; D0: in Std_logic; 
            C0: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            DI1: in Std_logic; DI0: in Std_logic; CLK: in Std_logic; 
            F0: out Std_logic; Q0: out Std_logic; F1: out Std_logic; 
            Q1: out Std_logic);
    end component;
    component SLICE_2
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_3
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_4
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; DI1: in Std_logic; DI0: in Std_logic; 
            CLK: in Std_logic; F0: out Std_logic; Q0: out Std_logic; 
            F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_5
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; D0: in Std_logic; C0: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; DI1: in Std_logic; 
            DI0: in Std_logic; CLK: in Std_logic; F0: out Std_logic; 
            Q0: out Std_logic; F1: out Std_logic; Q1: out Std_logic);
    end component;
    component SLICE_6
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            D0: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_7
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_8
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; C0: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_9
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_10
      port (C1: in Std_logic; B1: in Std_logic; A1: in Std_logic; 
            B0: in Std_logic; A0: in Std_logic; F0: out Std_logic; 
            F1: out Std_logic);
    end component;
    component SLICE_11
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_12
      port (D1: in Std_logic; C1: in Std_logic; B1: in Std_logic; 
            A1: in Std_logic; B0: in Std_logic; A0: in Std_logic; 
            F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_13
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_14
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component SLICE_15
      port (B1: in Std_logic; A1: in Std_logic; B0: in Std_logic; 
            A0: in Std_logic; F0: out Std_logic; F1: out Std_logic);
    end component;
    component INV_RDB
      port (PADDO: in Std_logic; INVRD: out Std_logic);
    end component;
    component PLDCLKB
      port (PADDI: out Std_logic; PLDCLKS: in Std_logic);
    end component;
    component INV_CPUB
      port (PADDO: in Std_logic; INVCPU: out Std_logic);
    end component;
    component INV_IACK_AVECB
      port (PADDO: in Std_logic; INVIACKAVEC: out Std_logic);
    end component;
    component INV_MPU_DSACK0B
      port (PADDO: in Std_logic; INVMPUDSACK0: out Std_logic);
    end component;
    component INV_MPU_DSACK1B
      port (PADDO: in Std_logic; INVMPUDSACK1: out Std_logic);
    end component;
    component INV_WRUUB
      port (PADDO: in Std_logic; INVWRUU: out Std_logic);
    end component;
    component INV_WRUMB
      port (PADDO: in Std_logic; INVWRUM: out Std_logic);
    end component;
    component INV_WRLMB
      port (PADDO: in Std_logic; INVWRLM: out Std_logic);
    end component;
    component INV_WRLLB
      port (PADDO: in Std_logic; INVWRLL: out Std_logic);
    end component;
    component INV_WRUB
      port (PADDO: in Std_logic; INVWRU: out Std_logic);
    end component;
    component INV_WRLB
      port (PADDO: in Std_logic; INVWRL: out Std_logic);
    end component;
    component INV_WRB
      port (PADDO: in Std_logic; INVWR: out Std_logic);
    end component;
    component SIZ1B
      port (PADDI: out Std_logic; SIZ1S: in Std_logic);
    end component;
    component SIZ0B
      port (PADDI: out Std_logic; SIZ0S: in Std_logic);
    end component;
    component INV_SEL_0B
      port (PADDI: out Std_logic; INVSEL0: in Std_logic);
    end component;
    component WAIT2B
      port (PADDI: out Std_logic; WAIT2S: in Std_logic);
    end component;
    component INV_SEL_4toBB
      port (PADDI: out Std_logic; INVSEL4toB: in Std_logic);
    end component;
    component INV_FC0B
      port (PADDI: out Std_logic; INVFC0: in Std_logic);
    end component;
    component INV_FC2B
      port (PADDI: out Std_logic; INVFC2: in Std_logic);
    end component;
    component INV_FC1B
      port (PADDI: out Std_logic; INVFC1: in Std_logic);
    end component;
    component INV_SEL_FB
      port (PADDI: out Std_logic; INVSELF: in Std_logic);
    end component;
    component INV_SEL_CB
      port (PADDI: out Std_logic; INVSELC: in Std_logic);
    end component;
    component WAIT1B
      port (PADDI: out Std_logic; WAIT1S: in Std_logic);
    end component;
    component INV_SEL_1B
      port (PADDI: out Std_logic; INVSEL1: in Std_logic);
    end component;
    component INV_ASB
      port (PADDI: out Std_logic; INVAS: in Std_logic);
    end component;
    component A1B
      port (PADDI: out Std_logic; A1S: in Std_logic);
    end component;
    component A0B
      port (PADDI: out Std_logic; A0S: in Std_logic);
    end component;
    component INV_DSB
      port (PADDI: out Std_logic; INVDS: in Std_logic);
    end component;
    component R_WB
      port (PADDI: out Std_logic; RW: in Std_logic);
    end component;
  begin
    SLICE_0I: SLICE_0
      port map (C1=>N_152, B1=>N_52, A1=>N_153, B0=>N_173, A0=>N_158, M1=>N_99, 
                M0=>N_82, CLK=>I_PLDCLK, F0=>N_116, Q0=>N_45, F1=>N_145, 
                Q1=>N_85);
    SLICE_1I: SLICE_1
      port map (B1=>N_99, A1=>N_98, D0=>N_99, C0=>N_106, B0=>N_173, A0=>N_157, 
                DI1=>UMDS, DI0=>LDS, CLK=>I_PLDCLK, F0=>LDS, Q0=>N_128, 
                F1=>UMDS, Q1=>N_129);
    SLICE_2I: SLICE_2
      port map (B1=>N_99, A1=>N_106, B0=>N_99, A0=>N_96, DI1=>UDS, DI0=>LMDS, 
                CLK=>I_PLDCLK, F0=>LMDS, Q0=>N_130, F1=>UDS, Q1=>N_131);
    SLICE_3I: SLICE_3
      port map (C1=>N_99, B1=>N_158, A1=>N_106, B0=>N_99, A0=>N_97, DI1=>UUDS, 
                DI0=>LLDS, CLK=>I_PLDCLK, F0=>LLDS, Q0=>N_132, F1=>UUDS, 
                Q1=>N_133);
    SLICE_4I: SLICE_4
      port map (D1=>N_152, C1=>N_150, B1=>N_147, A1=>N_154, C0=>N_150, 
                B0=>N_147, A0=>N_154, DI1=>N_164, DI0=>N_151, CLK=>I_PLDCLK, 
                F0=>N_151, Q0=>N_169, F1=>N_164, Q1=>N_170);
    SLICE_5I: SLICE_5
      port map (D1=>N_75, C1=>N_145, B1=>N_152, A1=>N_56, D0=>N_75, C0=>N_146, 
                B0=>N_145, A0=>N_72, DI1=>N_168, DI0=>N_166, CLK=>I_PLDCLK, 
                F0=>N_166, Q0=>N_171, F1=>N_168, Q1=>N_172);
    SLICE_6I: SLICE_6
      port map (C1=>N_173, B1=>N_157, A1=>N_106, D0=>N_116, C0=>N_40, 
                B0=>N_113, A0=>N_95, F0=>N_97, F1=>N_95);
    SLICE_7I: SLICE_7
      port map (D1=>N_117, C1=>N_118, B1=>N_103, A1=>N_102, B0=>N_158, 
                A0=>N_106, F0=>N_102, F1=>N_96);
    SLICE_8I: SLICE_8
      port map (D1=>N_173, C1=>N_106, B1=>N_158, A1=>N_157, C0=>N_158, 
                B0=>N_157, A0=>N_173, F0=>N_118, F1=>N_98);
    SLICE_9I: SLICE_9
      port map (C1=>N_173, B1=>N_157, A1=>N_158, B0=>N_173, A0=>N_157, 
                F0=>N_113, F1=>N_103);
    SLICE_10I: SLICE_10
      port map (C1=>N_106, B1=>N_158, A1=>N_157, B0=>N_158, A0=>N_106, 
                F0=>N_40, F1=>N_117);
    SLICE_11I: SLICE_11
      port map (B1=>N_45, A1=>N_85, B0=>N_45, A0=>N_85, F0=>N_127, F1=>N_126);
    SLICE_12I: SLICE_12
      port map (D1=>N_152, C1=>N_156, B1=>N_64, A1=>N_155, B0=>N_152, A0=>N_56, 
                F0=>N_146, F1=>N_72);
    SLICE_13I: SLICE_13
      port map (B1=>N_45, A1=>N_128, B0=>N_45, A0=>N_133, F0=>N_120, F1=>N_125);
    SLICE_14I: SLICE_14
      port map (B1=>N_45, A1=>N_131, B0=>N_45, A0=>N_129, F0=>N_121, F1=>N_124);
    SLICE_15I: SLICE_15
      port map (B1=>N_45, A1=>N_132, B0=>N_45, A0=>N_130, F0=>N_122, F1=>N_123);
    INV_RDI: INV_RDB
      port map (PADDO=>N_127, INVRD=>INV_RD);
    PLDCLKI: PLDCLKB
      port map (PADDI=>I_PLDCLK, PLDCLKS=>PLDCLK);
    INV_CPUI: INV_CPUB
      port map (PADDO=>N_169, INVCPU=>INV_CPU);
    INV_IACK_AVECI: INV_IACK_AVECB
      port map (PADDO=>N_170, INVIACKAVEC=>INV_IACK_AVEC);
    INV_MPU_DSACK0I: INV_MPU_DSACK0B
      port map (PADDO=>N_171, INVMPUDSACK0=>INV_MPU_DSACK0);
    INV_MPU_DSACK1I: INV_MPU_DSACK1B
      port map (PADDO=>N_172, INVMPUDSACK1=>INV_MPU_DSACK1);
    INV_WRUUI: INV_WRUUB
      port map (PADDO=>N_120, INVWRUU=>INV_WRUU);
    INV_WRUMI: INV_WRUMB
      port map (PADDO=>N_121, INVWRUM=>INV_WRUM);
    INV_WRLMI: INV_WRLMB
      port map (PADDO=>N_122, INVWRLM=>INV_WRLM);
    INV_WRLLI: INV_WRLLB
      port map (PADDO=>N_123, INVWRLL=>INV_WRLL);
    INV_WRUI: INV_WRUB
      port map (PADDO=>N_124, INVWRU=>INV_WRU);
    INV_WRLI: INV_WRLB
      port map (PADDO=>N_125, INVWRL=>INV_WRL);
    INV_WRI: INV_WRB
      port map (PADDO=>N_126, INVWR=>INV_WR);
    SIZ1I: SIZ1B
      port map (PADDI=>N_173, SIZ1S=>SIZ1);
    SIZ0I: SIZ0B
      port map (PADDI=>N_157, SIZ0S=>SIZ0);
    INV_SEL_0I: INV_SEL_0B
      port map (PADDI=>N_155, INVSEL0=>INV_SEL_0);
    WAIT2I: WAIT2B
      port map (PADDI=>N_156, WAIT2S=>WAIT2);
    INV_SEL_4toBI: INV_SEL_4toBB
      port map (PADDI=>N_153, INVSEL4toB=>INV_SEL_4toB);
    INV_FC0I: INV_FC0B
      port map (PADDI=>N_154, INVFC0=>INV_FC0);
    INV_FC2I: INV_FC2B
      port map (PADDI=>N_150, INVFC2=>INV_FC2);
    INV_FC1I: INV_FC1B
      port map (PADDI=>N_147, INVFC1=>INV_FC1);
    INV_SEL_FI: INV_SEL_FB
      port map (PADDI=>N_152, INVSELF=>INV_SEL_F);
    INV_SEL_CI: INV_SEL_CB
      port map (PADDI=>N_64, INVSELC=>INV_SEL_C);
    WAIT1I: WAIT1B
      port map (PADDI=>N_52, WAIT1S=>WAIT1);
    INV_SEL_1I: INV_SEL_1B
      port map (PADDI=>N_56, INVSEL1=>INV_SEL_1);
    INV_ASI: INV_ASB
      port map (PADDI=>N_75, INVAS=>INV_AS);
    A1I: A1B
      port map (PADDI=>N_158, A1S=>A1);
    A0I: A0B
      port map (PADDI=>N_106, A0S=>A0);
    INV_DSI: INV_DSB
      port map (PADDI=>N_99, INVDS=>INV_DS);
    R_WI: R_WB
      port map (PADDI=>N_82, RW=>R_W);
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of ARBITER_TOP is
    for Structure
    end for;
  end Structure_CON;


