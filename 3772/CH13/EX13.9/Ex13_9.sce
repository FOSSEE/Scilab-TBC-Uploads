// Problem no 13.9,Page No.308

clc;clear;
close;

L=4 //m //span
w=80*10**3 //N/m //u.d.l
D=35 //cm //Overall depth
b=15 //cm //width of Flange
t=2.5 //cm //Thickness of flange
w_d=30 //cm //Depth of web
w_t=1.2 //cm //thickness of web

//Calculations

R_a=160;R_b=160 //KN //Reactions at supports

//Shear FOrce at 1m from left support
F=R_a*10**3-w

M=R_a*10**3-w*2**-1 //B.M at 1m From support

I=(b*D**3-((b-w_t)*w_d**3))*12**-1 //cm**4

y=w_d*2**-1
sigma=M*I**-1*y //N/m**2

//Shear stress in Flange at the junction with web
X_1=w*b*t*(w_d*2**-1+t*2**-1)*10**-6*(I*10**-8*b*10**-2)**-1*10**-3

//Shear stress in web at the junction with Flange 
X_2=X_1*15*1.2**-1

//Result
printf("The Magnitude of Bending is %.2f",sigma);printf(" N/m**2")
printf("\n Shear stress in web at the junction with Flange %.2f",X_1);printf(" KN/m**2")
