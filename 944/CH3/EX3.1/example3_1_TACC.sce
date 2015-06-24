//example 3.1

clear;
clc;

//given:
V1=14;//initial volume of cylinder in m3
V2=9;//final volume of cylinder in m3
P=2000;//pressure during the operation in N/m2
U=(-6000);//internal energy of the system in J

//to find energy transfered in form of heat:
W=-P*(V2-V1);//work done during the operation in J
Q=U-W;//energy tranfered in form of heat in J
printf("energy tranfered in form of heat is %f J",Q);
 