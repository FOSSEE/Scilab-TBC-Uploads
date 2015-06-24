clc
//initialization of variables
P1=160 //lb/in^2
T1=100 //F
P2=140 //lb/in^2
T2=550 //F
disp("From steam tables,")
h1=67.97 
s1=0.1295
h2=1300.9
s2=1.6945
//calculations
dh=h2-h1
ds=s2-s1
//results
printf("Change in enthalpy = %.1f B/lbm",dh)
printf("\n Change in entropy = %.4f B/lbm R",ds)
