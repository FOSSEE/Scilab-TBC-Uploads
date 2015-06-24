clc;funcprot(0);//EXAMPLE 3.23
// Initialisation of Variables
Vs=0.0053;................//Swept volume in m^3
Vc=0.00035;...............//Clearance volume in m^3
v3=Vc;
v2=Vc;
p3=65;..................//Max pressure in bar
co=5;...................//Cut off percentage
p4=p3;ga=1.4;...............//Ratio of specific heats
t1=353;....................//Temperature at the start of compression in K
p1=0.9;...................//Pressure at the start of compression in bar
//Calculations
r=1+(Vs/Vc);...................//Compression ratio
rho=(((co/100)*Vs)/Vc)+1;...................//Cut off ratio
p2=p1*(r^ga);
Beta=p3/p2;.............................//Explosion ratio
etadual=1-[(1/(r^(ga-1)))*((Beta*(rho^ga))-1)*(1/((Beta-1)+(Beta*ga*(rho-1))))];............//Efficiency of dual cycle
disp(etadual*100,"Efficiency of dual cycle:")
