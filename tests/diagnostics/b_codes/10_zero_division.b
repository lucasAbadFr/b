/*=============================================================================
 * TEST 10 : Zero Division
 *-----------------------------------------------------------------------------
 *
 *     attempt zero division
 *
 * In evaluating the constant part of an expression, the compiler found the
 * right operand of a division or remainder operator to be the constant zero.
 *
 */

main() {
    auto a;

    /*
     * At first I through of hidding the 0 division with a substraction like
     * this, but it was useless as we don't have any security mechanism to
     * prevent zero division.
     * 
     * auto a, b, c;
     * 
     * a = 8;
     * b = 8;
     *
     * c = 32 / (a - b); 
     */
    
    a = 32 / 0;
}