// Problem no 12.3,Page No.287

clc;clear;
close;

L=6 //m //span of beam
w=30*10**3 //KN/m //u.d.l
P=160*10**3 //N //concentrated Load

//Calculations

//Consider a section at a distance x from the fixed end A and B.M at x
//M_x=R_b*(6-x)-30*2**-1*(6-x)**2-160*(3-x)

//E*I*d**2y*(dx**2)**-1=-M_x=-R_b*(6-x)+15*(6-x)+160*(3-x)

//Now Integrating above term we get
//E*I*dy*(dx)**-1=R_b*2**-1*(6-x)**2-5*(6-x)**3-80*(3-x)**2+C_1  (Equation 1)

//Now on Integrating we get
//E*I*y=-R_b*6**-1*(6-x)**3+5*4**-1*(6-x)**2+80*3**-1*(3-x)**3+C_1*x+C_2  (Equation 2)

//At x=0,dy*dx**-1=0
//substituting in equation 1 we get
//C_1=1800-R_b

//At x=0,y=0
//substituting in equation 2 we get
//C_2=36*R_b-2340

//At x=6,y=0
R_b=72**-1*(10800-2340)

//At x=0
x=0
M_x=R_b*(6-x)-30*2**-1*(6-x)**2-160*(3-x)

//Result
printf("Bending Moment at A is %.2f",M_x);printf(" KNm")
printf("\n The Reaction at B %.2f",R_b);printf(" KN")
