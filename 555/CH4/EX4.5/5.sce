// Implementation of example 4.5
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//pressure in initial state 'p1',Volume in initial state 'V1',
//pressure in final state 'p2',Volume in final state 'V2',
//internal energy U = (34 + 3.15 * p * V); 
p1 = 170; //kPa
V1 = 0.03; //m3
p2 = 400; //kPa
V2 = 0.06; //m3
dU = 3.15 * (p2 *V2 - p1 * V1); //kJ


A = [1 V1;1 V2];
C = [p1;p2];
B = inv(A)*C;
a = round(B(1,1));
b = round(B(2,1));

function p = pdV(V)
  p = a+b*V;
endfunction
//Work transfer involved during the process 'W12'
W12 = intg(V1,V2,pdV); //kJ
printf("Work done by the system, W12 = %0.2f kJ\n\n",W12);
//Heat transfer 'Q12'
Q12 = dU + W12;
printf("Heat flow into the system during the process, Q12 = %0.2f kJ",Q12);
// end