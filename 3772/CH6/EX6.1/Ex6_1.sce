// Problem no 6.1,Page No.154

clc;clear;
close;

b=0.12 //m //Width of beam
d=0.2  //m //Depth of beam
dell=0.005 //m //Deflection
E=2*10**5*10**6 //N/m**2 
L=2.5 //m //Length of beam

//Calculations

I=b*d**3*12**-1 //m**4 //M.I of rectangular section
w=8*E*I*dell*(L**4)**-1 //N/m //U.d.l

//Let slope at free end be theta
theta=w*L**3*(6*E*I)**-1 //Radian 

W=dell*3*E*I*(L**3)**-1*10**-3 //kN //Concentrated Load 

theta_2=W*L**2*(2*E*I)**-1 //Slope at free end

//Result
printf("Uniformly distributed Load beam should carry is %.2f N/m",w)
printf("\n Concentrated Load at free end is %.2f kN",W)

//Answer is wrong in the textbook.
