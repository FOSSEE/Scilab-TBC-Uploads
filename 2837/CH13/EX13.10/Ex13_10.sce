clc
clear
//Initialization of variables
A=[1 1; 0.5 1]
B=[1; 0.9]
x=0.9
//calculations
N2=x*79/21
C=A\B
vec= [ C(1) C(2) N2]
su=sum(vec)
vec2=vec/su *100
//results
printf("Volumetric analysis")
disp('CO      CO2      N2')
disp(vec2)
