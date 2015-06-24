//Ex3_6
clc
v = 2*10^7
e = -1.6*10^-19
n = 10^8
J = n*e*v
disp("v = "+string(v)+"m/s")//velocity of electron
disp("e = "+string(e)+"C")//electron charge
disp("n = "+string(n)+" /m-cube")//electron density
disp("J = nev = "+string(abs(J))+"A/m-sq")//current density

//note: formula for current density in the solution in the textbook is misprinted 
//      also the answer is provide in the textbook for above problem is misprinted.
