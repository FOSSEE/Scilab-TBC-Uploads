// Implementation of example 4.4
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

//Initial pressure p1 volume V1, final pressure p2 volume V2
//internal energy u = 3.56*p*v+84, pv^n=constant 
p1=500;//kPa
V1=0.22;//m^3
p2=100;//kPa
n=1.2;
V2=V1*(p1/p2)^(1/n);
//change in internal energy 'dU'
dU = 3.56*(p2*V2-p1*V1);
//Work done 'Wa'
Wa = (p2*V2-p1*V1)/(1-n);
//Heat transfer 'Qa'
Qa=dU+Wa;
//Part b
Qb = 30;//kJ
Wb=Qb-dU;
printf(' (a):Change in internal energy = %0.0f kJ \n Work done W = %0.1f kJ \n Heat transfer Q = %0.1f kJ \n (b): W = %0.0f kJ \n The work in (b) is not equal to integral of pdV since the process is not quasi-static',dU,Wa,Qa,Wb);
// end