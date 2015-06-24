//sum of minterms and product of maxterms//
//example 38//
clc
//clears the command window//
clear
//clears//
disp('given f=AB+A''BC+C''D')
disp('f=AB(C+C'')(D+D'')+AB''C(D+D'')+C''D(A+A'')(B+B'')')
disp('required sum of minterms:')
disp('f=ABCD+ABCD''+ABC''D+ABC''D''+AB''CD+AB''CD''+AB''C''D+A''BC''D+A''B''C''D')
disp('f=summation(1,5,9,10,11,12,13,14,15')
disp('therefore f=product(0,2,3,4,6,7,8)')
disp('required product of maxterms:')
disp('f=(A+B+C+D)(A+B+C''+D)(A+B+C''+D'')(A+B+C''+D'')(A+B''+C+D)(A+B''+C''+D)(A+B''+C''+D'')(A''+B+C+D)')
