// Problem 5.15,Page no.137

clc;clear;
close;

B=20 //cm //width of timber
D=30 //cm //depth of timber
d=25 //cm //depth of steel plate
b=1.2 //cm //width of steel plate
sigma_s=90 //N/mm**2 //Bending stress in steel
sigma_t=6 //N/mm**2 //Bending stress in timber
m=20 //Ratio of modulus of elasticity of of steel to timber

//Calculation

//Equivalent width of wood section,when 1.2 cm wide steel plate is replaced by steel plate is
b_1=1.2*20 //cm
d_1=25 //cm //depth of wood section
y_1=d*2**-1 //cm //C.G of timber section
y_2=D*2**-1 //cm //C.G of steel section

Y_bar=(2*d*b_1*y_1+D*B*y_2)*(2*d*b_1+D*B)**-1 //cm //Distance of C.G from Bottom edge
I=B*D**3*12**-1+B*D*(y_2-Y_bar)**2+2*(b_1*d_1**3*12**-1+b_1*d_1*(Y_bar-y_1)**2) //M.I of equivalent timber section about N.A
Y=30-Y_bar //distance of C.G from top of equivalent wood section

//Thus max stress will occur at top and that in steel will occur at bottom
//sigma_s=m*Y_bar*Y**-1*sigma_t 

//After simplifying we get
//sigma_s=15.99*sigma_t

sigma_t=sigma_s*15.99**-1 //N/mm**2 //Max stress in Equivalent timber section

Z_t=I*Y**-1 //Section modulus of equivalent section
M=sigma_t*Z_t*10**-5*100 //Moment of resistance of beam

//Result
printf("Position of N.A is %.2f cm",Y_bar)
printf("\n Moment of Resistance of beam is %.2f kN-m",M)
