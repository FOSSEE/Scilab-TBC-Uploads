clc
//initialization of variables
P1=160 //lb/in^2
T1=100 //F
P2=140 //lb/in^2
T2=550 //F
disp("From steam tables,")
h1=67.97 //B/lbm
h2=1299.3 //B/lbm
s1=0.1295 //B/lbm R
s2=1.6785 //B/lbm R
//calculations
dh=h2-h1
ds=s2-s1
//results
printf("Change in enthalpy = %.1f B/lbm",dh)
printf("\n Change in entropy = %.4f B/lbm R",ds)
