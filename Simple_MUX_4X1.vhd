ENTITY Simple_MUX_4X1 IS

PORT(
			A  : in BIT;
			B  : in BIT;
			C  : in BIT;
			D  : in BIT;
			SEL: IN BIT_VECTOR (1 DOWNTO 0);
			S  : OUT BIT
     );

END Simple_MUX_4X1;

ARCHITECTURE RTL OF Simple_MUX_4X1 IS
BEGIN
    process (SEL, A, B, C, D)
    begin
        case SEL is
            when "00" => S <= A;
            when "01" => S <= B;
            when "10" => S <= C;
            when "11" => S <= D;
				when others => S <= '0';
        end case;
    end process;

end RTL;