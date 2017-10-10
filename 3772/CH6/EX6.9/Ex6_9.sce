// Problem no 6.9,Page No.160

clc;clear;
close;

L=14 //m //Lenth of steel girder
E=210*10**9 //modulus of Elasticity of steel
I=16*10**4*10**-8 //M.I of girder section

//Calculations

//R_a+R_b=200  //R_a & R_b are the Reactions at supports A & B respectively

//After taking moment at B We get
R_a=(120*11+80*4.5)*14**-1 //KN
R_b=200-R_a

//After considering section at X-X at a distance x from left end A and taking B.M at X-X
//M=120*x-120(x-3)-80*(x-9.5)

//After Integrating twice we get
//EI*dy*dx**-1=-60*x**2*+60(x-3)**2+40(x-9.5)**2+C_1 //slope 

//Again on Integrating we get
//EI*y=-20*x**3+20(x-3)**3+40*3**-1*(x-9.5)**3+C_1*x+C_2 //Deflection

//At A deflection is zero,i.e at x=0,y=0 
//At B deflection is zero,i.e at x=14,y=0 So C_2=0

C_1=-(-20*(14)**3+20*(11)**3+40*3**-1*(14-9.5)**3)*14**-1 //constant 

//Now Deflection at D i.e at x=3 m
x=3
y_D=1*(E*I)**-1*(-20*x**3+20*(x-3)**3+C_1*x)*10**3

//Now Deflection at D i.e at x=9.5 m
x=9.5
y_C=1*(E*I)**-1*(-20*x**3+20*(x-3)**3+40*3**-1*(x-9.5)**3+C_1*x)*10**3

//Result
printf("Deflection under points of two Loads are i.e: at pt D = %.4f m",y_D)
printf("\n                                             : at pt C = %.4f m",y_C)
