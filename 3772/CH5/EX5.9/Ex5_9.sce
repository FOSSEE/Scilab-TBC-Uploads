// Problem 5.9,Page no.128

clc;clear;
close;

B=24 //mm //width of beam section
D=21.7 //mm //depth of beam section
E_1=11440 //MN/m**2 //Modulus of Elasticity parallel grain
E_2=2860 //MN/m**2 ////Modulus of Elasticity perpendicular grain
sigma_1=8.57 //MN/m**2
sigma_2=2.14 //MN/m**2
L=1.2 //m //span of beam

//Calculations

//Ratio of smaller modulus to larger modulus is E_2:E_1=1:4
//Dimension of transformed Beam section
b=18 //mm //width of Beam section
d=3.1 //mm //depth of beam section

I=(1*12**-1*B*10**-3*(D*10**-3)**3)-(3*(1*12**-1*b*10**-3*(d*10**-3)**3)) //m**4 //M.I of transformed section
y=21.7*10**-3*2**-1 
M=I*sigma_1*10**6*y**-1 //N*m //Safe B.M
P=4*M*L**-1 //N

//Result
printf("Safe value of Load is %.2f N",P)
