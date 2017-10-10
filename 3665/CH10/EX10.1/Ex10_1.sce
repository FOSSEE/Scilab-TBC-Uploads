clc//
//
//

//Variable declaration
C=2*10^-6;    //capacitance(F)
V=1000;      //voltage(V)
epsilon_r=100;

//Calculation
W=C*V^2/2;    //energy stored in the condenser(J)
C0=C/epsilon_r;
W0=C0*V^2/2;
E=1-W0;       //energy stored in the dielectric(J)

//Result
printf("\n energy stored in the condenser is %0.3f J",W)
printf("\n energy stored in the dielectric is %0.3f J",E)
