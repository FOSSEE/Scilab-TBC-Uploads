clear all; clc;
//Value of s differs. The one given in the book is incorrect. On calculation the value is equal to the one provided here.

disp("The dynamic pressure at the inlet is calculated from pd1=rho*V1^2/2")

Q=220*0.00223//0.00223 is conversion factor
D=5
A=%pi*(D^2)/4
V_1=(Q*144)/(A)
printf(" V1=Q/A= %0.2f ft/s",V_1)

rho=62.4
V_1=3.60
p_d1=(rho*(V_1^2))/(2*144*32.2)
printf(" \npd1= %0.3f psi",p_d1)

disp("The vapor pressure of water at 80 degrees Farenheit is obtained from steam tables as pv=0.507psia.")
disp("The required NPSH is designated at the condition such that discharge pressure drops for 3% from the non cavitation condition.")

dpdash=0.97*70
printf(" Hence from the above test data,the correspondin dpdash= %0.2f psi",dpdash)

p_1dash=7.2+(7.5-7.2)*(67.9-67.5)/0.5
printf("\n p1dash can also be obtained %0.2f psia",p_1dash)

disp("Also NPSPR=p1dash+pd1-pv")
p_1dash=7.44//rounded off
p_d1=0.087//rounded off
p_v=0.507
NPSPR=p_1dash+p_d1-p_v
printf("\n Hence NPSPR = %0.2f psia",NPSPR)

NPSPR=7.02//rounded off
NPSPHR=2.307*NPSPR
printf("\n NPSPHR= %0.2f ft",NPSPHR)

N=3500
Q=220
NPSHR=16.2
S=(N*(Q^0.5))/((NPSHR)^0.75)
printf("\n S= %0.0f rpm*(gpm^0.5)/(ft^0.75))",S)//S= 6419 but on calculation it is found out that S=6429. Hence the value given here is correct.
