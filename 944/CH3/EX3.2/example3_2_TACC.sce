//example 3.2

clear;
clc;

//given:
R=8.314;//universal gas constant [J/K/mol]
T=300;//temperture for the process [K]
U=0;//change in internal energy [J]
V1=2.28;//initial volume [m3]
V2=4.56;//final volume[m3]


//to find the heat lost or gained by the system:
W=2.303*R*T*log10(V2/V1);//work done during the process[J]
Q=W;//heat lost or gained by the system[J]
printf("the heat gained by the system is %f J",Q);