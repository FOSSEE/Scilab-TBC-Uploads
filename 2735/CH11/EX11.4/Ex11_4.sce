clc
clear
//Initialization of variables
cr=6
p1=14.7 //psia
t1=60.3 //F
M=29
R=1.986
//calculations
disp("from table b-9")
vr1=158.58 
u1=88.62 //Btu/lbm
pr1=1.2147
vr2=vr1/cr
T2=1050 //R
u2=181.47 //Btu/lbm
pr2=14.686
p2=p1*(pr2/pr1)
dw=u1-u2
h2=u2+T2*R/M
//results
printf("final temperature = %d R",T2)
printf("\n final pressure = %.1f psia",p2)
printf("\n work done = %.2f Btu/lbm",dw)
printf("\n final enthalpy = %.1f Btu/lbm",h2)
