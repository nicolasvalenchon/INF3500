----------------------------------------------------------------------
-- Author: Jeferson Santiago da Silva
----------------------------------------------------------------------
-- Modified: Sat 29 Feb 2020 04:13:00 PM EST
-- Signed-off-by: Olivier Dion <olivier.dion@polymtl.ca>
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

-------------------------------------
-- Package
-------------------------------------
package common_utils is

    -------------
    -- Types   --
    -------------
    type vector8 is array (integer range <>) of std_logic_vector(7 downto 0);

    -------------
    -- Funções --
    -------------
    -- LOG base 2
    function log2(x: integer) return integer;

    -- Greater
    function greater(x: integer; y: integer) return integer;

end common_utils;

-------------------------------------------------------------------------------
-- Package Body
-------------------------------------------------------------------------------
package body common_utils is

    -- Função LOG base 2
    function log2(x: integer) return integer is
    begin
        return integer(ceil(log2(real(x))));
    end log2;

    -- Função greater
    function greater(x: integer; y: integer) return integer is
    begin
        if X > y then
            return x;
        else
            return y;
        end if;
    end greater;

end common_utils;
