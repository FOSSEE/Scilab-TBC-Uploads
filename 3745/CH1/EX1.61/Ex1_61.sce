// Ex 61 Page 403

clc;clear;close;
// Given
d=5/100;//m
S=-4/100;//m
Ve=3;//kV
theta=45;//degree
e=1.6*10**-19;//C
m=9.67*10**-31;//kg

u=sqrt(2*e*Ve*1000/m);//m/s
uy=u*sind(theta);//m/s
vy=0;//since final velocity =0
//vy**2-uy**2=2*ay*S
ay=(vy**2-uy**2)/2/S;//m**2/s
//ay=e/m*V/d
V=ay*m*d/e;//V
printf("Potential difference = %.f V",V)
