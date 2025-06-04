/*=============================================================================
 * TEST 01 : Syntax Error
 *-----------------------------------------------------------------------------
 *
 *     syntax error at line nn [in file <name>]
 *
 * This is the most common diagnostic and it could mean almost any kind of
 * error. Most often, it means a semi-colon is missing or the number of 
 * pening curly braces '{' does not match the number of closing curly braces
 * '}'. In the second case, the line number is the number of the last line in
 * the last file being processed plus one. This may also occur if you do not
 * end a string constant, character constant, or comment. You also get this
 * message if you use a keyword in an inappropriate context, if you neglect
 * to define a manifest, or if you attempt to redefine a manifest.
 *
 */

main() {
    auto a, b, c;
    a = 0;
    b = 1;

    c = a + b;
 // missing '}'.