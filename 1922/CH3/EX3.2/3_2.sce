clc
clear
//Initialization of variables
t1=1000 //K
p1=20 //Mpa
p2=10 //Mpa
ti=600 //K
t2=700 //K
v1=0.02188
vi=0.02008
v2=0.02825
Ei=2617.5
E2=2893.1
E1=3441.8
x=0.22
m=1 //kg
cp=4.186
t3=639 //K
H3=2409.5
H1=3879.3
//calculations
Tf= ti+ (v1-vi)/(v2-vi) *(t2-ti)
Ef= Ei+ x*(E2-Ei)
Q1=Ef-E1
//results
disp("part a")
printf("Heat transfer = %.1f kJ/kg",Q1)
