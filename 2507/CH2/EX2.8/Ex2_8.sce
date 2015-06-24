clc
clear
printf("Example 2.8 | Page number 45 \n\n");
//Find the mechanical efficiency of the engine

//Given Data
N = poly([0 .5],'n','c') //n is engine speed
x = 6 //six cylinders
y = 1 //assumed
d = 0.1 //m //bore length
A = %pi*(0.1)^2/4 //m^2 //Area
L = 0.15 //m //stroke length
P_shaft = 24.78 //KW //Power of shaft
T = 474.9 //Nm //Torque in the crank shaft
l = 0.05 //m //length of indicator diagram
a = 9.37*10^(-4) //cm^2 //area of indicator diagram
S = 0.5*(10^8) //N/m^3 //spring constant

//Solution
p_m = a*S/l //mean pressure difference
printf("Mean pressure difference = %.2f N/m^2\n",p_m);

P_ind = (x*y)*p_m*(L*A*N/60000) //indicated power
C = coeff(P_ind)
printf("Indicated Power = %.6f n kW\n",C(2));

P_shaft = 2*%pi*poly([0 1],'n','c')*T/60000 //shaft power output
C = coeff(P_shaft)
printf("Shaft power output (in KW)= %.5f n kW\n",C(2));

Mechanical_efficiency = coeff(P_shaft,1)/coeff(P_ind,1)*100
printf("Mechanical Efficiency = %.0f %%",Mechanical_efficiency(1));
