/*=============================================================================
 * TEST 03 : Newline in Constant
 *-----------------------------------------------------------------------------
 *
 *     warning: newline in constant not preceded by '*'
 *
 * The most probable cause is that you forgot to terminate a string or
 * character constant with the appropriate delimiter. If this is the case, you
 * will surely get a syntax error later. If you want a "real" new-line inside
 * the constant, but no warning, use the escape sequence '*n'. If the constant
 * is a string constant which is too long to fit on one line, put a '*' in
 * front of the new-line, and the new-line will be discarded. If you actually
 * see the warning, the new-line is kept in the source code.
 *
 */

main() {
    extrn printf;
    auto str;

    str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed\n
do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
ex ea commodo consequat. Duis aute irure dolor in reprehenderit";
    
    printf("%s\n", str);
}