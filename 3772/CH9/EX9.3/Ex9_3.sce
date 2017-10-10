// Problem no 9.3,Page no.233

clc;clear;
close;

dell=1 //cm //Deflection
FOS=4 //Factor of safety
E=210 //GPa //Modulus of Elasticity of steel bar
W=40 //KN //Load 

//Flange Dimensions
b=30 //cm //width of flange
d=5 //cm //depth of flange

//Web Dimensions
d_1=100 //cm //Depth of web
t_1=2 //cm //Thcikness of web

//Calculations

I_xx=(0.3*1.1**3-0.28*1**3)*12**-1 //m**4 //M.I about x-x axis
I_yy=2*0.05*0.3**3*12**-1+1*0.02**3*12**-1 //m**4 //M.I about y-y axis

//From the equation of deflection we get
L=(dell*10**-2*384*E*10**9*I_xx*(5*40*10**3)**-1)**0.25 //m //Length of beam
P=%pi**2*210*I_yy*10**9*4*(L**2)**-1 //N //crippling Load
S=P*4**-1 //N //Safe Load

//Result
printf("The Safe Load is %.2f",S);printf(" N")
