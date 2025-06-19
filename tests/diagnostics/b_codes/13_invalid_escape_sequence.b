/*=============================================================================
 * TEST 13 : Invalid $ escape sequence
 *-----------------------------------------------------------------------------
 *
 *    invalid $ escape sequence
 *
 * An escape sequence beginning with $ is not known to the compiler.
 *
 * Note: These sequences were historically used to substitute symbols like 
 *       `{`, `[` etc. on keyboards where those characters weren't directly
 *       available.
 *
 *       The lexer in this implementation does not support them.
 *       This test ensures that any $-prefixed sequence causes an error.
 *
 * Reference:
 *     - https://www.thinkage.ca/gcos/expl/b/manu/manu.html#AppendixA_2
 */

main() {
    auto a;
    
    a = $42;
}