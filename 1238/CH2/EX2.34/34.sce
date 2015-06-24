//finding maxterms and minterms//
//example 34//
clc
//clears the command window//
clear
//clears//
//finding minterms and maxterms//
disp('given Y=AC''+A''C')
disp('Y=A''C(B+B'')+AC''(B+B'')')
disp('Y=A''CB+A''CB''+AC''B+AC''B''')
disp('these are the required minterms')
disp('the minterms indicate the positions 1,3,4,6')
disp('the maxterms indicate the positions 0,2,5,7')
//complementary of minterms//
disp('Y=(A+B+C)(A+B''+C)+(A''+B+C'')(A''+B''+C'')')
disp('these are the required maxterms')

