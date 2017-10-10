// Problem no 12.4,Page No.288

clc;clear;
close;

L=4 //span of beam
w_1=20*10**3 //Nm //u.d.l
w_2=30*10**3 //Nm //u.d.l

//Calculations

//consider a section at a distance x from A and B.M at this section is 
//M_x=R_b*(3-x)-10*x**2+90*x-195

//Now integrating above equation we get
//E*I*dy*(dx)**-1=-R_b(3*x-x**2*2**-1)+10*x**3*3**-1-45*x**2+195*x+C_1

//again on Integrating we get
//E*I*y=-R_b*(3*x**2*2**-1-x**3*6**-1)+10*x**4*12**-1-15*x**3+195*x**2*2**-1+C_1*x+C_2

//At x=0,dy*(dx)**-1=0  Therefore C_1=0

//At x=0,y=0  Therefore C_2=0

//At x=3m, y=0
x=3
C_1=0
C_2=0
R_b=-(-10*x**4*12**-1+15*x**3-195*x**2*2**-1-C_1*x-C_2)*(3*x**2*2**-1-x**3*6**-1)**-1

//result
printf("Load taken by prop is %.2f",R_b);printf(" KN")
