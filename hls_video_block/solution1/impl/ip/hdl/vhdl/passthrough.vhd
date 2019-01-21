-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity passthrough is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    input_mat_data_strea_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    input_mat_data_strea_empty_n : IN STD_LOGIC;
    input_mat_data_strea_read : OUT STD_LOGIC;
    input_mat_data_strea_3_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    input_mat_data_strea_3_empty_n : IN STD_LOGIC;
    input_mat_data_strea_3_read : OUT STD_LOGIC;
    input_mat_data_strea_4_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    input_mat_data_strea_4_empty_n : IN STD_LOGIC;
    input_mat_data_strea_4_read : OUT STD_LOGIC;
    output_mat_data_stre_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_mat_data_stre_full_n : IN STD_LOGIC;
    output_mat_data_stre_write : OUT STD_LOGIC;
    output_mat_data_stre_3_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_mat_data_stre_3_full_n : IN STD_LOGIC;
    output_mat_data_stre_3_write : OUT STD_LOGIC;
    output_mat_data_stre_4_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    output_mat_data_stre_4_full_n : IN STD_LOGIC;
    output_mat_data_stre_4_write : OUT STD_LOGIC );
end;


architecture behav of passthrough is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv10_2D0 : STD_LOGIC_VECTOR (9 downto 0) := "1011010000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv11_438 : STD_LOGIC_VECTOR (10 downto 0) := "10000111000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal input_mat_data_strea_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond_fu_210_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal input_mat_data_strea_3_blk_n : STD_LOGIC;
    signal input_mat_data_strea_4_blk_n : STD_LOGIC;
    signal output_mat_data_stre_blk_n : STD_LOGIC;
    signal output_mat_data_stre_3_blk_n : STD_LOGIC;
    signal output_mat_data_stre_4_blk_n : STD_LOGIC;
    signal i_1_fu_204_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_1_reg_225 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal j_1_fu_216_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal i_reg_176 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal j_reg_187 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond1_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_198_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_176_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_reg_176 <= i_1_reg_225;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_176 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    j_reg_187_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                j_reg_187 <= j_1_fu_216_p2;
            elsif (((exitcond1_fu_198_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_187 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_225 <= i_1_fu_204_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2, ap_CS_fsm_state2, exitcond1_fu_198_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_198_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, exitcond_fu_210_p2)
    begin
                ap_block_state3 <= (((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, exitcond1_fu_198_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_198_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond1_fu_198_p2 <= "1" when (i_reg_176 = ap_const_lv10_2D0) else "0";
    exitcond_fu_210_p2 <= "1" when (j_reg_187 = ap_const_lv11_438) else "0";
    i_1_fu_204_p2 <= std_logic_vector(unsigned(i_reg_176) + unsigned(ap_const_lv10_1));

    input_mat_data_strea_3_blk_n_assign_proc : process(input_mat_data_strea_3_empty_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_3_blk_n <= input_mat_data_strea_3_empty_n;
        else 
            input_mat_data_strea_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    input_mat_data_strea_3_read_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_3_read <= ap_const_logic_1;
        else 
            input_mat_data_strea_3_read <= ap_const_logic_0;
        end if; 
    end process;


    input_mat_data_strea_4_blk_n_assign_proc : process(input_mat_data_strea_4_empty_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_4_blk_n <= input_mat_data_strea_4_empty_n;
        else 
            input_mat_data_strea_4_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    input_mat_data_strea_4_read_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_4_read <= ap_const_logic_1;
        else 
            input_mat_data_strea_4_read <= ap_const_logic_0;
        end if; 
    end process;


    input_mat_data_strea_blk_n_assign_proc : process(input_mat_data_strea_empty_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_blk_n <= input_mat_data_strea_empty_n;
        else 
            input_mat_data_strea_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    input_mat_data_strea_read_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            input_mat_data_strea_read <= ap_const_logic_1;
        else 
            input_mat_data_strea_read <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_198_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_198_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_1_fu_216_p2 <= std_logic_vector(unsigned(j_reg_187) + unsigned(ap_const_lv11_1));

    output_mat_data_stre_3_blk_n_assign_proc : process(output_mat_data_stre_3_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_3_blk_n <= output_mat_data_stre_3_full_n;
        else 
            output_mat_data_stre_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    output_mat_data_stre_3_din <= input_mat_data_strea_3_dout;

    output_mat_data_stre_3_write_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_3_write <= ap_const_logic_1;
        else 
            output_mat_data_stre_3_write <= ap_const_logic_0;
        end if; 
    end process;


    output_mat_data_stre_4_blk_n_assign_proc : process(output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_4_blk_n <= output_mat_data_stre_4_full_n;
        else 
            output_mat_data_stre_4_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    output_mat_data_stre_4_din <= input_mat_data_strea_4_dout;

    output_mat_data_stre_4_write_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_4_write <= ap_const_logic_1;
        else 
            output_mat_data_stre_4_write <= ap_const_logic_0;
        end if; 
    end process;


    output_mat_data_stre_blk_n_assign_proc : process(output_mat_data_stre_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if (((exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_blk_n <= output_mat_data_stre_full_n;
        else 
            output_mat_data_stre_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    output_mat_data_stre_din <= input_mat_data_strea_dout;

    output_mat_data_stre_write_assign_proc : process(input_mat_data_strea_empty_n, input_mat_data_strea_3_empty_n, input_mat_data_strea_4_empty_n, output_mat_data_stre_full_n, output_mat_data_stre_3_full_n, output_mat_data_stre_4_full_n, ap_CS_fsm_state3, exitcond_fu_210_p2)
    begin
        if ((not((((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_3_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_full_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_4_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_3_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (input_mat_data_strea_empty_n = ap_const_logic_0)) or ((exitcond_fu_210_p2 = ap_const_lv1_0) and (output_mat_data_stre_4_full_n = ap_const_logic_0)))) and (exitcond_fu_210_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            output_mat_data_stre_write <= ap_const_logic_1;
        else 
            output_mat_data_stre_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;