//clc();
clear;
//To determine average absorbing power of surfaces
V=120000;        //Volume of hall in m^3
T=1.5;           //Reverberation time in sec
S=25000;         //Total sound absorbing surface in m^2
a=(0.165*V)/(T*S);
printf("average absorbing power of surface is %f O.W.U or sabine",a);
