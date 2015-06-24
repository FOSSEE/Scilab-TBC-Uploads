clc
//Example 8.2
//Calculate the speed of sound in air at 20 C
R=10.73//lbf.ft^3/in^2/lbmol/R
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
R1=(R*144*32.2)^0.5//ft/s*(lbm/lbmol/R)^0.5
k=1.4//dimentionless
T=528//R (Rankine temperature scale)
M=29//lbm/lbmol
c=R1*(k*T/M)^0.5//ft/s
printf("the speed of sound in air at 20 C is %f ft/s",c);