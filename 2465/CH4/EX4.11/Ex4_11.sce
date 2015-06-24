//Chapter-4,Example 11,Page 96
clc;
close;

R= 8.31   //gas constant

T= 273+25   // temperature in Kelvin

P1= 2   //pressure in atm 

P2= 1   //pressure in atm

w= 2.303 *R*T*log10(P1/P2)   //maximum work

printf('maximum work done is %.f J', w)

//mistake in textbook
