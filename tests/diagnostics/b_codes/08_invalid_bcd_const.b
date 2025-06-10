/*=============================================================================
 * TEST 08 : Invalid BCD Constant
 *-----------------------------------------------------------------------------
 *
 *     bcd constant too long
 *
 * A BCD constant contains more than six characters.
 *
 * Note: A BCD constant consists of one to six characters enclosed by grave
 *       accent characters (`backticks`).
 *
 * References: 
 *     - https://en.wikipedia.org/wiki/Binary-coded_decimal
 *     - https://en.wikipedia.org/wiki/BCD_(character_encoding)
 *
 */

main() {
    auto a, b, c, d;

    a = `123456`;
    b = `ab`;        /* 0x0000ab */
    
    /*
     * If your terminal does not have the grave accent character, you may write
     * a BCD constant as an ASCII character constant preceded by a dollar sign.
     */
    c =  $'123456';
    
    c = `1234567`; /* Invalid BCD constant */ 
}