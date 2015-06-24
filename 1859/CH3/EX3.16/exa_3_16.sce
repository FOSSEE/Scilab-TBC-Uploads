// Exa 3.16
clc;
clear;
close;
// Given data
CS= 0.1*10^-3;// current sensitivity in amp
VS= 1/CS;// voltage sensitivity in ohm/volt
VS= VS*10^-3;// in kohm/volt
Rm=500;// in ohm
Rm=Rm*10^-3;// in kohm

// (i) 0-10 V range
V=10;// full scale delection voltage in volt
R_T= VS*V;// in kohm
R1= R_T-Rm;// in kohm
disp(R1,"Additional required resistance at 0-10 V range in kohm")

// (ii) 0-50 V range
V=50;// full scale delection voltage in volt
R_T= VS*V;// in kohm
R2= R_T-R1-Rm;// in kohm
disp(R2,"Additional required resistance at 0-50 V range in kohm")

// (i) 0-100 V range
V=100;// full scale delection voltage in volt
R_T= VS*V;// in kohm
R3= R_T-R1-R2-Rm;// in kohm
disp(R3,"Additional required resistance at 0-100 V range in kohm")

// (i) 0-500 V range
V=500;// full scale delection voltage in volt
R_T= VS*V;// in kohm
R4= R_T-R1-R2-R3-Rm;// in kohm
disp(R4,"Additional required resistance at 0-500 V range in kohm")
