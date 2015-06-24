//Chapter 21, Problem 24
clc;
v1=220;                             //primary voltage
v2=1760;                            //secondary voltage
R=2;                                //cable resistance
Rl=1.28e3;                          //load across secondary winding
N=v1/v2;                            //turns ratio
R1=N^2*Rl;                          //equivalent input resistance
Rin=R+R1;                           //total input resistance,
I1=v1/Rin;                          //primary current
I2=I1*N;                            //secondary current
P=I2^2*Rl;                          //power dissipated
printf("(a) Primary current = %d A\n\n",I1);
printf("(b) Power dissipated in load resistor = %d W",P);
