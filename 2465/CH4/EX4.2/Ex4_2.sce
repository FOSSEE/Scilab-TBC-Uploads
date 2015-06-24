//Chapter-4,Example 2,Page 93
clc;
close;

q= 990*4.2/10^3   //heat in kiloJoule

w= 8.36*10^9/((10^3)*(10^7))  //work  in kiloJoule

delta_E = q-w

printf('the internal energy change of system is %.3f kJ',delta_E)
