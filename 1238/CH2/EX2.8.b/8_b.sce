//simplification of boolean expression//
//example 8.b//
clc
//clears the command window//
clear
//clears//
disp('given Y=A''BC''+A''BC+AB''C''+ABC')
disp('Y=A''BC''+A''BC+A''BC+AB''C''+ABC')
disp('Y=A''B(C+C'')+A''BC+AB''C+AB''C''')
disp('Y=A''B.1+BC(A+A'')+AB''C''');//C+C''=1//
disp('Y=A''B+BC+AB''C''');//A+A''=1//
disp('the simplified expression is:')
disp('Y=B.(A''+C)+AB''C''');//required simplified expression//
