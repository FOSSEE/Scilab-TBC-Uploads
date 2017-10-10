//Chapter-4,Example 1,Page 92
clc;
close;

R= 2     // gas constant

//as water temperature is 100 degree

T = 273 + 100   // temperature in  Kelvin

w=R*T    // work done

q= 536*18   //heat in cal/mol

delta_E= q-w 

printf('the amount of energy increased is %.1f cal/mol',delta_E)  
