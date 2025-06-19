/*=============================================================================
 * TEST 12 : Warning about auto-increment/decrement
 *-----------------------------------------------------------------------------
 *
 *    warning: found ++r-value
 *    warning: found --r-value
 *
 * You get this if you say something like ++x++.
 */

main() {
    auto a;
    
    a = 30;
    
    a++;
    ++a;
    
    ++a++;
    --a--;
}