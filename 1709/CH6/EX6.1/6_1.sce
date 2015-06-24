clc
//Initialization of variables
m=5 //lbm
P=50 //psia
T=500 + 460 //R
//calculations
disp("From saturated steam tables,")
s1=0.4110 //B/lbm R
s2=1.7887 //B/lbm R
dS=m*(s2-s1)
//results
printf("Change in entropy = %.3f B/R",dS)
