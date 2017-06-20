-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity prbs31 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    hw_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    hw_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of prbs31 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "prbs31,hls_ip_2016_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.370000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=32,HLS_SYN_LUT=1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal a : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    signal tmp_5_cast_fu_65_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_31_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_39_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_53_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal newbit_fu_47_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_57_p3 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then
                    a(30 downto 0) <= tmp_5_cast_fu_65_p1(30 downto 0);
            end if;
        end if;
    end process;
    a(31) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    hw_out <= std_logic_vector(resize(unsigned(tmp_5_fu_57_p3),32));

    hw_out_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
            hw_out_ap_vld <= ap_const_logic_1;
        else 
            hw_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    newbit_fu_47_p2 <= (tmp_fu_31_p3 xor tmp_1_fu_39_p3);
    tmp_1_fu_39_p3 <= a(27 downto 27);
    tmp_2_fu_53_p1 <= a(30 - 1 downto 0);
    tmp_5_cast_fu_65_p1 <= std_logic_vector(resize(unsigned(tmp_5_fu_57_p3),32));
    tmp_5_fu_57_p3 <= (tmp_2_fu_53_p1 & newbit_fu_47_p2);
    tmp_fu_31_p3 <= a(30 downto 30);
end behav;
