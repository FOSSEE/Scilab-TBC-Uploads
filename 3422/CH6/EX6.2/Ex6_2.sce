//Example 6.2, page 122
clc;
N=480//in rpm
T=318.3//in N-m
P=(2*%pi*N*T)/60
//From graph
E=333.3//in V
Ia=48//Amp
R=E/Ia
//disp(R)
printf("\n The total resistance of circuit is %f ohm ",R)