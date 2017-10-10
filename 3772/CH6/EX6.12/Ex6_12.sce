// Problem no 6.12,Page No.163

clc;clear;
close;

L=4 //m //Length of Beam

//calculations

//Consider a section at distance x from A and B.M at this section is
//M=P*(3-x)-10*x**2+90*x-195 

//Now //EI*d**2*y*d**2*x=-P*(3-x)+10*x**2-90*x+195

//On Integrating above equation we get 
//E*I*dy*dx**-1=-P*(3*x-x**2*2**-1)+10*x**3*2**-1-45*x**2+195*x+C_1

//Again On Integrating above equation we get 
//E*I*y=-P*(3*x**2*2**-1-x**3*6**-1)+10*x**4*12**-1-15*x**3+195*x**2*2**-1+C_1*x+C_2

//But at x=0,dy*dx**-1=0 we get ,C_1=0
//        x=0,y=0     we get    ,C_2=0
//At x=3 m,y=0
x=3
C_1=0
C_2=0
P=(10*x**4*12**-1-15*x**3+195*x**2*2**-1+C_1*x+C_2)*(3*x**2*2**-1-x**3*6**-1)**-1

//Result
printf("Load taken by prop is %.2f",P);printf(" KN")
