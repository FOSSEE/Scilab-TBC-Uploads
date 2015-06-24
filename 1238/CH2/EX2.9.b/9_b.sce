//simplification of boolean expression//
//example 9.b//
clc
//clears the command window//
clear
//clears//
//simplification of boolean expression//
disp('given Y=AB+ABC''+A''BC+ABC')
disp ('on simplification we get')
disp('Y=AB+ABC''+A''BC+ABC+A''BC')
disp('Y=AB+AB(C+C'')+BC(A+A'')')
disp('since x+x''=1,we get')
disp('Y=AB+AB+BC')
disp('Y=AB+BC')
disp('the simplified expression is:')
disp('Y=B(A+C)')
//answer after simplification//
