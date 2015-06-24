// to find the capacitance, resistance and the dissipation factor
// example 8-3 in page 202
clc;
//Given data
f=100;// frequency in Hz
C1=0.1e-6;// satndard capacitance in farad
R=[125 0 10e+3 14.7e+3];// resistances R1,R3 and R4 values in ohms as R2 is not used it is take as 0 for convinence
//calculation
Cs=C1*(R(3)/R(4));//series capacitance
Rs=R(1)*R(4)/R(3);// series resistance
D=2*%pi*f*Cs*Rs;// dissipation factor
printf("Cs=%.3f micro-F\nRs=%.1f ohm\nD=%.3f",Cs*10^6,Rs,D);
//result
//Cs=0.068 micro-F
//Rs=183.8 ohm
//D=0.008 