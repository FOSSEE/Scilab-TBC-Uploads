clc
clear
//Initialization of variables
m1=1 //lbm
m2=0.94 //lbm
M1=29
M2=18
p1=50 //psia
p2=100 //psia
t1=250 +460 //R
R0=1.986
cpa=6.96
cpb=8.01
//calculations
xa = (m1/M1)/((m1/M1)+ m2/M2)
xb=1-xa
t2=t1*(p2/p1)^(R0/(xa*cpa+xb*cpb))
d=R0/(xa*cpa+xb*cpb)
k=1/(1-d)
dsa=cpa*log(t2/t1) -R0*log(p2/p1)
dSa=(m1/M1)*dsa
dSw=-dSa
dsw=dSw*M2/m2
//results
printf("Final remperature = %d R",t2)
printf("\n Change in entropy of air = %.3f btu/mole R and %.5f Btu/R",dsa,dSa)
printf("\n Change in entropy of water = %.4f btu/mole R and %.5f Btu/R",dsw,dSw)
disp("The answers are a bit different due to rounding off error in textbook")
