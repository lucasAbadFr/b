/*=============================================================================
 * TEST 06 : Invalid Octal
 *-----------------------------------------------------------------------------
 *
 *     invalid octal constant
 *
 * An octal constant (an integer with a leading zero) contains a character
 * other than the digits 0-7.
 * 
 * Note : An octal constant consists of an integer number formed only from the
 *        octal digits zero through seven. To distinguish an octal constant
 *        from a decimal constant, an octal constant must begin with at least
 *        one leading zero.
 *
 */

main() {
    auto a, b, c;

    a = 01234567;
    b = 07787777; /* Invalid octal */ 

    c = a + b;
}