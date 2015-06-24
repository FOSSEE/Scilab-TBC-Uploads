clc();
clear;
// To calculate the energy stored in the condenser and polarizing the dielectric
C=2;    //capacitance in micro farad
C=C*10^-6;    //capacitance in farad
V=1000;   //voltage in Volts
epsilon_r=100;    
W=(C*(V^2))/2;
C0=C/epsilon_r;
W0=(C0*(V^2))/2;
W_0=1-W0;
printf("energy stored in the condenser is %f Joule",W);
printf("energy stored in the dielectric is %f Joule",W_0);
