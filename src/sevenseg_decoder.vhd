library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenseg_decoder is
    Port (
        i_Hex   : in  STD_LOGIC_VECTOR(3 downto 0);
        o_seg_n : out STD_LOGIC_VECTOR(6 downto 0)
    );
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is
begin

    process(i_Hex)
    begin
        case i_Hex is
            --        abcdefg
            when "0000" => o_seg_n <= "0000001"; -- 0
            when "0001" => o_seg_n <= "1001111"; -- 1
            when "0010" => o_seg_n <= "0010010"; -- 2
            when "0011" => o_seg_n <= "0000110"; -- 3
            when "0100" => o_seg_n <= "1001100"; -- 4
            when "0101" => o_seg_n <= "0100100"; -- 5
            when "0110" => o_seg_n <= "0100000"; -- 6
            when "0111" => o_seg_n <= "0001111"; -- 7
            when "1000" => o_seg_n <= "0000000"; -- 8
            when "1001" => o_seg_n <= "0000100"; -- 9
            when "1010" => o_seg_n <= "0001000"; -- A
            when "1011" => o_seg_n <= "1100000"; -- b
            when "1100" => o_seg_n <= "0110001"; -- C
            when "1101" => o_seg_n <= "1000010"; -- d
            when "1110" => o_seg_n <= "0110000"; -- E
            when "1111" => o_seg_n <= "0111000"; -- F
            when others => o_seg_n <= "1111111"; -- all segments off
        end case;
    end process;

end Behavioral;