// Exa 9.2
clc;
clear;
close;
format('v',5)
// Given data
bita= 100;
V_B1= 5;// in V
V_E1= 4.3;// in V
R_E1= 4.3*10^3;// in ohm
V_E2= 3.6;// in V
R_E2= 3.6*10^3;// in ohm
R_C=4*10^3;// in ohm
R_L= 4*10^3;// in ohm
R1= 100*10^3;// in ohm
R2= 100*10^3;// in ohm
gm= 40*10^-3;// in A/V
re= 25;// in W
r_pie= 2.5*10^3;// in W
f_r= 400*10^6;// in Hz
C_miu= 2*10^-12;// in F
omega_T= 2*%pi*f_r;// in radian
Rin= 38*10^3;// in ohm
R_S= 4*10^3;// in ohm
R_pie1= 80;//in ohm
Ve1ByVb1= 0.98;// in V/V
I_E1= V_E1/R_E1;// in A
I_E2= V_E2/R_E2;// in A
// We know, C_pie + C_miu= gm/ometa_T or
C_Pie= gm/omega_T-C_miu;// in F
Vb1ByVs= Rin/(Rin+R_S);// in V/V
//Ve1ByVb1= R_E1*r_pie2/(R_E1*r_pie2)/(R_E1*r_pie2/(R_E1*r_pie2)+r_e1);
VeByVb1= R_E1*r_pie/(R_E1*r_pie)/(R_E1*r_pie/(R_E1*r_pie)+R_E1);// in V/V
// The gain of the common-emitter amplifier Q2
VoByVe1= -gm*R_C*R_L/(R_C+R_L);// in V/V
// The overall gain
VoByVs= Vb1ByVs*Ve1ByVb1*VoByVe1;// in V/V
RdeshS= R1*R2*R_S/(R1*R2+R2*R_S+R_S*R1);
RdeshE1= R_E1*r_pie/(R_E1+r_pie);// in k ohm
R_miu1= R_S*Rin/(R_S+Rin)*10^-3;// in k ohm
R_pi1= (r_pie*(RdeshS+RdeshE1)/(1+gm*RdeshE1))/r_pie+(RdeshS+RdeshE1)/(1+gm*RdeshE1);
R_T=round( RdeshE1*(r_pie+RdeshS)/(bita+1)/(RdeshE1+(r_pie+RdeshS)/(bita+1)));// in ohm
disp(VoByVs,"The overall voltage gain in V/V is : ")
disp(R_miu1,"The value of R_miu1 in ohm is : ")
disp(R_pie1,"The value of R_pie1 in ohm is : ")
disp(R_T,"The value of R_T in ohm is : ")
