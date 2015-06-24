clc;
warning("off");
printf("\n\n example2.9 - pg44");
// given
A=5;  //[m^2] - area of the plates
Ft=0.083  //[N] - force on the top plate
Fb=-0.027;  //[N] - force on the bottom plate
ut=-0.3;  //[m/sec] - velocity of the top plate
ub=0.1;  //[m/sec] - velocity of the bottom plate
dely=0.01;  //[m]
delux=ut-ub;  //[m/sec]
// using the formula tauyx=F/A=-mu(delux/dely)
tauyx=(Ft-Fb)/A;
mu=tauyx/(-delux/dely);  //[Ns/m^2]
mu=mu*10^3;  //[cP]
printf("\n\n The viscosity of toulene in centipose is %fcP",mu);

