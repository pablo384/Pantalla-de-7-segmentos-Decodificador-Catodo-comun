library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
  
entity siete_segmentos is
    PORT (
        entrada: IN  STD_LOGIC_VECTOR(3 downto 0);
        salida : OUT STD_LOGIC_VECTOR(6 downto 0)
    );
end siete_segmentos;
  
architecture Behavioral of siete_segmentos is
begin
    visualizador: process (entrada) begin
        case entrada is
            when "0000" =>  salida <= "0000001"; -- 0
            when "0001" =>  salida <= "1001111"; -- 1
            when "0010" =>  salida <= "0010010"; -- 2
            when "0011" =>  salida <= "0000110"; -- 3
            when "0100" =>  salida <= "1001100"; -- 4
            when "0101" =>  salida <= "0100100"; -- 5
            when "0110" =>  salida <= "0100000"; -- 6
            when "0111" =>  salida <= "0001111"; -- 7
            when "1000" =>  salida <= "0000000"; -- 8
            when "1001" =>  salida <= "0000100"; -- 9            
            when others   =>  salida <= "0000001"; -- Nada
        end case;
    end process;
end Behavioral;