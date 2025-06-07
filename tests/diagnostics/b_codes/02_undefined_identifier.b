/*=============================================================================
 * TEST 02 : Undefined Identifier
 *-----------------------------------------------------------------------------
 *
 *     <identifier> undefined in function <name>
 *
 * An identifier in the named function has not been referenced by an extrn or
 * auto statement and has not been used as a label. The line number given is
 * the last line of the function being compiled.
 *
 */

main() {
    auto a, b, c;
    
    a = 0;
    b = 1;
    c = 2;
    d = 3; // not defined
}