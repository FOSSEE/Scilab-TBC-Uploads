//Engineering and Chemical Thermodynamics
//Example 2.7
//Page no :63

clear ; clc
//Given data
T1 = 298;
T2_start = 300;
A = 3.355;
B = 0.575*10^-3;
D = -0.016*10^5;

function y = f(T),y = 8.314*[A*T + B/2*T^2 - D/T]
endfunction;
disp(" Example: 2.7   Page no : 63") ;
for T2_start = 300:100:1000;
    del_h = f(T2_start) - f(T1);
    Cp = del_h /(T2_start - 298);
    mprintf('\n      At temperature(K) %g,     Molar heat capacity (J/molK) %g',T2_start,Cp);   
end