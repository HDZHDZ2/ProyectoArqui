library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity u_control is
	Port( inst : in STD_LOGIC_VECTOR (15 downto 0);
			selregr : out STD_LOGIC_VECTOR (3 downto 0);
			sels1 : out STD_LOGIC;
			sr : out STD_LOGIC;
			cin : out STD_LOGIC;
			sels2 : out STD_LOGIC;
			seldato : out STD_LOGIC;
			selsrc : out STD_LOGIC_VECTOR (2 downto 0);
			seldir : out STD_LOGIC_VECTOR(1 downto 0);
			selop : out STD_LOGIC_VECTOR (3 downto 0);
			selresult : out STD_LOGIC_VECTOR (1 downto 0);
			selc : out STD_LOGIC;
			cadj : out STD_LOGIC;
			selfalgs : out STD_LOGIC_VECTOR (3 downto 0);
			selbranch : out STD_LOGIC_VECTOR (2 downto 0);
			vf : out STD_LOGIC;
			selregw : out STD_LOGIC_VECTOR (2 downto 0);
			memw : out STD_LOGIC;
			seldirw : out STD_LOGIC_VECTOR (1 downto 0));
end u_control;

architecture Behavioral of u_control is
begin
	process (inst)
	begin	
		case inst is
			when X"00C6" => -- LDAB 
				selregr <= "0000";
				sels1 <= '0';
				sr <= '1';
				cin <= '0';
				sels2 <= '0';
				seldato <= '1';
				selsrc <= "011";
				seldir <= "00";
				selop <= "0100";
				selresult <= "01";
				selc <= '1';
				cadj <= '0';
				selfalgs <= "0001";
				selbranch <= "000";
				vf <= '1';
				selregw <= "100";
				memw <= '0';
				seldirw  <= "00"; 
			when X"0086" => -- LDAA ; lo mismo que la insctruccion anterior
				selregr <= "0000";
				sels1 <= '0';
				sr <= '1';
				cin <= '0';
				sels2 <= '0';
				seldato <= '1';
				selsrc <= "011";
				seldir <= "00";
				selop <= "0100";
				selresult <= "01";
				selc <= '1';
				cadj <= '0';
				selfalgs <= "0001";
				selbranch <= "000";
				vf <= '1';
				selregw <= "001";   --Solo cambia esto, movemos resultUPA a ACCA
				memw <= '0';
				seldirw  <= "00"; 
			when X"001B" => -- ABA 
				--En caso de estar vacio el comantario : Para esta instruccucion no nos interesa y dejamos en default
				selregr <= "0001"; --Seleccionamos ACCA y ACCB como D1 y D2,respectivamente
				sels1 <= '0';      --
				sr <= '1';			 --
				cin <= '0';		    --
				sels2 <= '0';      --Requerimos usar ambos ACCX por lo que ponemos en 0
				seldato <= '1';	 --
				selsrc <= "001";   --Cargamos D1 y D2 como OP1 y OP2, respectivamente
				seldir <= "00";    --
				selop <= "0001";   --Selecionamos una suma entre OP1 y OP2
				selresult <= "01"; --Mandamos el resultado de la suma a resultUPA
				selc <= '1';	    --Seleccionamos Cadj
				cadj <= '0';		 --Cargamos 0 
				selfalgs <= "0010";--ASSctivamos N,Z,V,C,H
				selbranch <= "000";--
				vf <= '1';			 --
				selregw <= "001";  --Escribimos resultUPA en ACCA
				memw <= '0';		 --
				seldirw  <= "00";  --
			WHEN X"007E" => -- JMP , estra instrucci??n es parecida a LDAA y LDAB,
				selregr <= "0000";
				sels1 <= '0';
				sr <= '1';
				cin <= '0';
				sels2 <= '0';
				seldato <= '1';
				selsrc <= "011";
				seldir <= "00";
				selop <= "0100";
				selresult <= "01";
				selc <= '1';
				cadj <= '0';
				selfalgs <= "0000"; --No modificamos banderas
				selbranch <= "000";
				vf <= '0';          --Movemos el valor para indicar un salto
				selregw <= "000";   --No escribimos en ning??n lugar
				memw <= '0';
				seldirw  <= "00"; 
			WHEN OTHERS => -- NOP 
				selregr <= "0000";
				sels1 <= '0';
				sr <= '0';
				cin <= '0';
				sels2 <= '0';
				seldato <= '0';
				selsrc <= "000";
				seldir <= "00";
				selop <= "0000";
				selresult <= "00";
				selc <= '0';
				cadj <= '0';
				selfalgs <= "0000";
				selbranch <= "000";
				vf <= '1';
				selregw <= "000";
				memw <= '0';
				seldirw  <= "00"; 				
		end case;
	end process;
end Behavioral;
