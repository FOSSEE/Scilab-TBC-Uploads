//Chapter-4,Example 16,Page 97
clc;
close;

//since the operation is isothermal & hte gas is ideal therefore..

delta_E= 0  // from 1st law of thermodynamics

P= 1   //pressure in atm

V1= 10   // volume in cubic decimeter

V2= 20   // volume in cubic decimeter

W= P*(V2-V1)*(8.314/0.0821)   // work done by system

q=W   //from 1st law of thermodynamics

delta_H = delta_E + W

printf(' q = %.2f J',q)

printf('\n  W = %.2f',W)

printf('\n  delta_E = %.f J',delta_E)

printf('\n  delta_H = %.2f J',delta_H)
