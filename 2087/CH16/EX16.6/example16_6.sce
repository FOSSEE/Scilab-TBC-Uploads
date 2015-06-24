

//example 16.6
//calculate permeability coefficient
clc;funcprot(0);
//given
L=30;         //spacing between drans
Q=4D-6;       //discharge
a=8;
b=8.3;

k=1000000*Q*L/(4*(b^2-a^2));
k=round(k*100)/100;
mprintf("permeability coefficient=%fD-6 m/sec.",k);
