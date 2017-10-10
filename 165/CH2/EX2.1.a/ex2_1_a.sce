//Example 2.1(a)
clc;
N=100;            //No of turns of wire of the coil
W=20*10^-3;       //Width of the coil
D=30*10^-3;       //Depth of the ciol
B=0.1;            //Flux density in the gap
I=10*10^-3;       //Current in the movable coil
K=2*10^-6;        //Spring Constant
A=W*D;            //Effective coil area
Tau=B*A*N*I;      //Deflecting Torque
Theta=Tau/K;      //Deflection
printf('\nDeflecting torque = %.2f uNm\n',Tau*10^6)
printf('\nDeflection = %d degree\n',Theta)