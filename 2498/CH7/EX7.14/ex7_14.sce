// Exa 7.14
clc;
clear;
close;
format('v',6)
// Given data
I_DSS = 16*10^-3;// in A
V_P = 4;// in V
V_GS= 2.86;//in V
Yos = 25;// in µS
Yos= Yos* 10^-6;// in S
R_S= 2.2*10^3;// in ohm
//gm = gmo * (1-(V_GS/V_P)) or
gm= 2*I_DSS/V_P*(1-V_GS/V_P);// in A/V
gm= gm*10^3;// in mA/V
disp(gm,"Part (i) : The value of gm in mS or mA/V is");
gm= gm*10^-3;// in A/V
r_d = 1/Yos;// in ohm
r_d= r_d*10^-3;// in k ohm
disp(r_d,"The value of r_d in k ohm is");
r_d= r_d*10^3;// in ohm
// Part (ii)
Zi = 1;// in Mohm
miu = r_d*gm;
Zof_int= r_d/(1+miu)
// The value of Zo 
Zo= Zof_int*R_S/(Zof_int+R_S);// in ohm
// The value of Av
Av= miu*R_S/(r_d+(1+miu)*R_S);
disp(Zi,"Part (ii) : The value of Zi in M ohm is : ")
disp(Zo,"Part (iii) : The value of Zo in ohm is : ")
disp(Av,"Part (iv) : The value of Av is : ")
