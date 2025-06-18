/*=============================================================================
 * TEST 11 : Invalid & prefix
 *-----------------------------------------------------------------------------
 *
 *     invalid & prefix
 *
 * The && operator has been used in an invalid context, such as &&x=y.
 */

main() {
    auto a, b, c;
    
    a = 32;

    /* 
     * This test checks that the address-of operator '&' cannot be applied
     * to an rvalue or more precisely, that the resulting expression cannot
     * be used as an lvalue.
     *
     * Examples like the following are all invalid:
     *     &b    = a;
     *     &&b   = a;   // same as &(&b) = a;
     *     &(&b) = a;
     *
     * All of them should produce the same error, such as:
     *     > ERROR: cannot take the address of an rvalue
     *
     * What remains unclear is why this specific case should triggers a
     * separate diagnostic:
     *     > invalid & prefix
     *
     * It might be due to how the old compiler tokenized '&&b' and they chooses
     * to report a distinct error for this pattern.
     */
    
    &&c = a;
}