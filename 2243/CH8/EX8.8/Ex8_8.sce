clc();
clear;
//Given :
h = 6.625*10^-34 ; //planck's constant in Js
me = 9.1*10^-31 ; //electron mass in kg
mn = 1.67*10^-27;// a nucleon mass in kg
//(a)For electron
L1 = 1; // in A
//E = (n^2*h^2)/(8*m*L^2) , here n value is not given , so let us calculate the remaining part (neglecting n^2 in the formula)
//L1 = 1*10^-10 m , 1A = 1.0*10^-10 m
E1 = h^2/(8*me*(L1*10^-10)^2); // energy in J
//(b)For nucleon
L2 = 1; // in fm
//E = (n^2*h^2)/(8*m*L^2) , here n value is not given , so let us calculate the remaining part (neglecting n^2 in the formula)
//L2 = 1*10^-15 m , 1 fm = 1.0*10^-15 m
E2 = h^2/(8*mn*(L2*10^-15)^2);//energy in J
printf("Energy for an electron : %.1f x 10^-17 x n^2  J \n",E1*10^17);
printf("Energy for a nucleon : %.2f x 10^-11 x n^2  J",E2*10^11);
