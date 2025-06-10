/*=============================================================================
 * TEST 07 : Invalid Character Constant
 *-----------------------------------------------------------------------------
 *
 *     character constant too long
 *
 * A character constant may not contain more than four characters (but some of
 * the characters may be represented by two-character escape sequences).
 *
 * Note : An ASCII character constant consists of one to four ASCII characters
 *        inside single quotes.
 */
 
main() {
    auto a, b, c;

    a = 'abcd';
    b = '\n\tab'; /* Valid, escaped characters count for 1 */
    
    c = 'abcde'; /* Invalid character constant */ 
}