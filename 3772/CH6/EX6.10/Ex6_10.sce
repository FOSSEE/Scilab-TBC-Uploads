// Problem no 6.10,Page No.161

clc;clear;
close;

E=200*10**9 //Pa 
I=20000*10**-8 //m**4

//Calculations

//Now Taking moment at B
R_a=(1000*3*4.5+1000*2)*6**-1 //Reaction Force at pt A

//On part BC u.d.l of 1KN/m is introduced both above and below 
//consider section at distance x i.e X-X and considering moment at section X-X

//M=15500*x*6**-1-1000*x**2*2**-1-1000(x-4)+1000*2**-1*(x-3)**2
//EI*d**2y*d**x=-M=15500*x*6**-1-1000*x**2*2**-1-1000(x-4)+1000*2**-1*(x-3)**2

//Now Integrating above Equation we get Equation of slope
//EI*dy*dx**-1=-15500*x**2*12**-1+1000*x**3*6**-1+1000*(x-4)**2*2**-1+1000*6**-1*(x-3)**3+C_1

//Now Integrating above Equation we get Equation of Deflection
//EI*y=-15500*x**3*36**-1+1000*x**4*24**-1+1000*(x-4)**3*6**-1+1000*24**-1*(x-3)**3+C_1*x+C_2

//At x=0,deflection is zero,i.e y=0  C_2=0
//At x=6,deflection is zero,i.e y=0  
x=6
C_1=-(-15500*x**3*36**-1+1000*x**4*24**-1+1000*(x-4)**3*6**-1+1000*(x-3)**4*24**-1)*x**-1 //Constant

//Answer for constant C_1 is incorrect in Book

//Now Deflection at C,put x=3 m
x=3
y_C=1*(E*I)**-1*(-15500*x**3*36**-1+1000*x**4*24**-1+1000*(x-4)**3*6**-1+1000*24**-1*(x-3)**3+C_1*x)*10**3

//Now Deflection at D,put x=4 m
x=4
y_D=1*(E*I)**-1*(-15500*x**3*36**-1+1000*x**4*24**-1+1000*(x-4)**3*6**-1+1000*24**-1*(x-3)**3+C_1*x)*10**3

//Answers for y_C & y_D are incorrect in book

//Result
printf("Deflection at pt C is %.2f mm",y_C)
printf("\n Deflection at pt D is %.2f mm",y_D)
