-- RDS message
-- LICENSE=BSD

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package message is
    -- RDS message converted from pic assember to stream of bytes
    -- PS="Radio4", RT="HELLO", PID=0xC000
    -- All parts of the message has correct CRC
    type rds_msg_type is array(0 to 259) of std_logic_vector(7 downto 0);
    constant rds_msg_map: rds_msg_type := (
x"c0",x"00",x"9b",x"02",x"03",x"29",x"fc",x"00",x"07",x"01",x"49",x"86",x"a9",
x"c0",x"00",x"9b",x"02",x"02",x"47",x"bc",x"00",x"07",x"01",x"91",x"a7",x"c6",
x"c0",x"00",x"9b",x"02",x"02",x"ab",x"0c",x"00",x"07",x"01",x"bc",x"d3",x"94",
x"c0",x"00",x"9b",x"02",x"02",x"f0",x"9c",x"00",x"07",x"00",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"00",x"23",x"74",x"84",x"50",x"f5",x"31",x"33",x"13",
x"c0",x"00",x"9b",x"08",x"00",x"78",x"e4",x"f2",x"08",x"f4",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"00",x"94",x"52",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"00",x"cf",x"c2",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"01",x"16",x"a2",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"01",x"4d",x"32",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"01",x"a1",x"82",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"01",x"fa",x"12",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"02",x"13",x"42",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"02",x"48",x"d2",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"02",x"a4",x"62",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"02",x"ff",x"f2",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"03",x"26",x"92",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"03",x"7d",x"02",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"03",x"91",x"b2",x"02",x"08",x"e0",x"80",x"80",x"dc",
x"c0",x"00",x"9b",x"08",x"03",x"ca",x"22",x"02",x"08",x"e0",x"80",x"80",x"dc"
    );
end message;
