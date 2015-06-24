//Engineering and Chemical Thermodynamics
//Example 2.3
//Page no :38

clear ; clc

//External pressure is constant
P_ex = 1*10^5 ; //[Pa]}

//To calculte work done
function y = f(x),y = 1,endfunction
I = intg(10,15.2,f) ;
W = -P_ex * I * 10^-3 ; //[J]
disp(" Example: 2.1   Page no : 33") ;
printf('\n         Work done = %g J',W);