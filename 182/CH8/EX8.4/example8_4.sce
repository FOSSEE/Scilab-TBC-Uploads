// To find the resistance,capacitance and dissipation factors
// example 8-4 in page 204
clc;
//Given Data
f=100;// frequency in Hz
C1=0.1e-6;// satndard capacitance in farad
R=[375e+3 0 10e+3 14.7e+3];// resistances R1,R3 and R4 values in ohms as R2 is not used it is take as 0 for convinence
//calculation
Cp=C1*(R(3)/R(4));//parallel capacitance in farad
Rp=R(1)*R(4)/R(3);// parallel resistance in ohm
D=1/(2*%pi*f*Cp*Rp);// dissipation factor
printf("Cp=%.3f micro-F\nRp=%.1f K-ohm\nD=%2.1e\n",Cp*10^6,Rp/1000,D);
//result
// Cp=0.068027 micro-F
//Rp=551.250000 K-ohm
//D=0.042441
 