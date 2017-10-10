//Example 6_6_u1
clc();
clear;
//To calculate the ratio of stimulated emission to Spontaneous emission
h=6.63*10^-34                    //units in m^2 kg s^-1
c=3*10^8                                  //units in meter/sec
lamda=694.3                                  //units in nm
lamda=lamda*10^-9                       //units in meters
kb=1.38*10^-23                                  //units in m^2 kg s^-2 K^-1
T=300                                                    //units in K
constant=(h*c)/(lamda*kb*T)
R=1/(exp(constant)-1)
printf("The ratio of stimulated emission to Spontaneous emission is R=")
disp(R)
//In text book answer is given R=4.98*10^-14 but the correct answer is R=8.874D-31   
