// Example 7.10
format('v',5)
clc;
clear;
close;
// given data
R_E= 360;// in Ω
R_L= 1*10^3;// in Ω
R1= 100*10^3;//in Ω
R2= 100*10^3;//in Ω
r_desh_e1= 250;// in Ω
r_desh_e2= 2.5;// in Ω
h_FE= 100;
h_fe= 100;
// The load resistance,
r_L= R_E*R_L/(R_E+R_L);// in Ω
Zin1= h_FE*h_fe*r_L;// in Ω
Zin= R1*R2*Zin1/(R1*R2+R2*Zin1+Zin1*R1);// in Ω
Zin2= h_FE*(r_L+r_desh_e2);// in Ω
Zin1= h_FE*(Zin2+r_desh_e1);// in Ω
// The input impedence 
Zin= R1*R2*Zin1/(R1*R2+R2*Zin1+Zin1*R1);// in Ω
Zin= Zin*10^-3;// in k ohm
disp(Zin,"The input impedence in kΩ is : ")
