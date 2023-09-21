library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED is
    Port (
        bot: in STD_LOGIC;          -- Botão de controle
        s_led : out STD_LOGIC          -- Saída para o LED
    );
end LED;

architecture A of LED is
    -- Definição dos estados da máquina de estado
    type State_Type is (LIGADO, DESLIGADO);
	 signal estado: State_Type := LIGADO;

begin
	 process (estado, bot)
	 begin
		if (rising_edge(bot)) then
			case estado is
				when LIGADO =>
					estado <= DESLIGADO;
				when DESLIGADO =>
					estado <= LIGADO;
			end case;
		end if;
	 end process;
    -- Saída do estado do LED
    s_led <= '1' when estado=LIGADO else '0';

end A;