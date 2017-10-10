//Section-12,Example-6,Page no.-SS.60
//To calculate the no. of charge carriers and the conductivty of the doped material.
clc;
a=5.431*10^-8                       //cm
u_e=1900                    //cm^2V^-1sec^-1
e=1.6*10^-19                     //coulombs
V=a^3                           //cm^3
N_D=(8/V)/10^6                    //cm^3
C_n=e*N_D*u_e
disp(C_n,'Conductivity of P-doped Si(N- type semiconductor)(ohm^-1cm^-1)')
