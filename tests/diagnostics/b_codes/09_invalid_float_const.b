/*=============================================================================
 * TEST 09 : Invalid Float Constant
 *-----------------------------------------------------------------------------
 *
 *     exponent too large in constant
 *
 * The exponent of a floating point constant is too large or too small to
 * represent in the hardware.
 *
 * Note: A floating point constant is any number containing a decimal point. It
 *       must not begin with the decimal point, but it may have leading zeroes.
 *       It may also be followed by the letter 'e' and a signed integer
 *       exponent.
 */

main() {
    auto a, b, c;

    a = 3.14;
    b = 6.62607015e-34; /* Valid syntax */
    
    c = 1.9e112233445566; /* Invalid float constant */ 
}