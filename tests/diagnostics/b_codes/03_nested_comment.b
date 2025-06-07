/*=============================================================================
 * TEST 03 : Nested Comment
 *-----------------------------------------------------------------------------
 *
 *     warning: \/\* inside comment ...
 *
 * This is a warning only, but there will probably be a syntax error later on,
 * since comments may not be nested. After reading a \/\*, the compiler skips all
 * text until a \*\/ is encountered. If there is a comment inside a comment, then
 * the compiler tries to compile the remainder of the outer comment.
 *
 * Note: 
 *     - In this comment we escape with `\` but the historical escape character
 *       of B is `*`. This is a known issue in this compiler implementation.
 *     - Even if this compiler support C++ style comments, it is also not
 *       hystorically accurate so we don't test them. 
 */

main() {
    auto a, b, c;
    
    a = 0;
    b = 1;

    /*
     * This is the start of my comment.
     * 
     *     /* Here is some nested comment. */
     * 
     * This is the end of my comment.
     *
     */
    c = a + b;
}