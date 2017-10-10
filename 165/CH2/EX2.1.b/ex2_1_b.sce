//Example 2.1(b)
clc;
N=100;            //No of turns of wire of the coil
W=20*10^-3;       //Width of the coil
D=30*10^-3;       //Depth of the ciol
B=0.1;            //Flux density in the gap
Tau=30*10^-6;     //Deflecting Torque
A=W*D;            //Effective coil area
I=Tau/(B*A*N);      //Current through the moving coil
printf('\nCurrent through the moving coil = %.2f mA\n',I*1000)