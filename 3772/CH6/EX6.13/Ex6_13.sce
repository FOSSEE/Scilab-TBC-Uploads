// Problem no 6.13,Page No.163

clc;clear;
close;

L=6 //m //Span of Beam
sigma=100*10**6 //Pa //Bending stress
E=210*10**9
y=0.45 //m //Depth

//Calculations

//Taking moment at B
R_a=20*6*3+6*40*2*2**-1

//At a section x from A the rate of Loading=20+2*3**-1*x //KN/m
//S.F=100-20*x-x**2*3**-1
//M=100*x-10*x**2-x**3*9**-1 

//Thus B.M will be max where S.F is zero,we get equation as
//x**2+60*x-300=0
a=1
b=60
c=-300

X=b**2-4*a*c
x_1=(-b+X**0.5)*(2*a)**-1
x_2=(-b-X**0.5)*(2*a)**-1

x=4.641
M=100*x-10*x**2-x**3*9**-1 //KN*m //Max bending moment
I=M*sigma**-1*y*1000*2**-1 //m**4 //M.I

//E*I*d**2*y*(d*x**2)**-1=-100*x+10*x**2+x**3*9**-1

//AFter Integrating above EquATION WE get
//E*I*dy*(dx)**-1=-50*x**2+10*3**-1*x**3+x**4*36**-1+C_1
//Again Integrating above EquATION WE get
//E*I*y=-50*x**3*3**-1+10*12**-1*x**4+x**5*180**-1+C_1*x+C_2

//At x=0,y=0  ,C_2=0
//At x=6,y=0 
x=6
C_2=0
C_1=-(-50*x**3*3**-1+10*12**-1*x**4+x**5*180**-1)*x**-1

x=3 //m
y=1*(E*I)**-1*(-50*x**3*3**-1+10*12**-1*x**4+x**5*180**-1+C_1*x+C_2)*1000*100

//Result
printf("The central Deflection is %.2f",y);printf(" cm")
