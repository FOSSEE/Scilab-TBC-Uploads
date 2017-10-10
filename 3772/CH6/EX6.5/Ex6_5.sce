// Problem no 6.5,Page No.157

clc;clear;
close;

b=0.1 //m //width 
d=0.2 //m //depth
L=2 //m //Length of beam
L_1=1 //m //Length from free end
E=210*10**9 
W=1*10**3 //N //Concentrated Load
w=2*10**3 //N/m

//Calculations

I=b*d**3*12**-1 //m**4 //M.I of the beam section

//Slope at free end
theta=W*L**2*(2*E*I)**-1+w*L**3*(6*E*I)**-1-w*(L-L_1)**3*(6*E*I)**-1 

//Deflection at free end
y_b=(W*L**3*(3*E*I)**-1+w*L**4*(8*E*I)**-1-w*(L-L_1)**4*(8*E*I)**-1-w*(L-L_1)**3*L_1*(6*E*I)**-1)*10**3 

//Result
printf("Slope at free end is %.5f radian",theta)
printf("\n Deflection at free end is %.2f mm",y_b)
