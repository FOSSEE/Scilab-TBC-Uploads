//Chapter 7, Problem 15, Figure 7.6
clc;
u0=4*%pi*10^-7;
ur=1;
B=0.80;                     //flux density
H=750;                      //field intensity from B-H curve
l1=25*10^-2;                //length of cast steel core
l2=1*10^-3;                 //air gap
A=2*10^-4;                  //cross-sectional area
N=5000;                     //no of turns
//for cast steel core
S1=(l1*H)/(B*A);
//For the air gap:
S2=l2/(u0*ur*A);
//Total reluctance 
S=S1+S2;
phi=B*A;
I=(S*phi)/N;
printf("Current in the coil to produce a flux density of 0.80T = %f A",I);
