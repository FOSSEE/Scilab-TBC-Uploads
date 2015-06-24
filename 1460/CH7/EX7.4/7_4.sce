clc
//initialization of variables
T1=300 //F
disp("From steam tables,")
h1=269.59 //B/lbm
h2=1179.7 //B/lbm
s1=0.4369 //B/lbm R
s2=1.6350 //B/lbm R
//calculations
dh=h2-h1
ds=s2-s1
//results
printf("Change in enthalpy = %.1f B/lbm",dh)
printf("\n Change in entropy = %.4f B/lbm R",ds)
