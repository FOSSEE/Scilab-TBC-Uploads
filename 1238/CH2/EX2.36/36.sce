//finding required data//
//example 36//
clc
//clears the command window//
clear
//clears//
disp('f=A''B''C+A''BC''+AB''C+ABC''');//since f is 1 at positions 1,2,5,6;this is the required SOP expression//
disp('f=(A+B+C)(A+B''+C'')(A''+B+C)(A''+B''+C'')');//since f is 0 at 0,3,4,7;this is the required POS expression//
disp('sum of minterms=summation(1,2,5,6)')
disp('product of maxterms=product(0,3,4,7)')

