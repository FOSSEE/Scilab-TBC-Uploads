clc;
clear;

printf("\n Example 9.18\n");

d=1; //Diameter of plate
r1=0.5;
r4=r1; //Radius of the imaginary disc sealing the hemisphere
L=r1; //The distance between the plate and the bottom of the dome

A1=%pi*d^2/4; //Area of the plate
A2=2*%pi*d^2/4; //Area of the underside of the Hemisphere
A4=%pi*r4^2/4;//Area of an imaginary disc sealing the hemisphere and parallel 
              //to the plate
T1=750;//Temperature of the plate
T2=1200;//Temperature of hemispherical cone
T3=290;//Temperature of the surroundings
sigma=5.67e-8;
//from equation 9.134, the net radiation to the surface of the plate 1 is 
//given by:
//Q1=sigma*A2*F21*(T2^4-T1^4)+sigma*A3*F31(T3^4-T1^4)
//using the reciprocity rule:
//Q1=sigma*A1*F12*(T2^4-T1^4)+sigma*A3*F31(T3^4-T1^4)
//All radiation from the disc 1 to the dome 2 is intercepted by the imaginary 
// disc 4 and hence F\2 = F\4, which may be obtained from Figure 9.39ii, with 
//i and j representing areas 1 and 4 respectively
R1=r1/L;
R4=r4/L;
S=1+(1+R4^2)/(R1^2);
F14=0.5*(S-(S^2-4*(r4/r1)^2)^0.5);
F12=F14;
//The summation rule states that
//F11+F12+F13=1
//F11=0
F13=1-F12;
Q1=sigma*A1*F12*(T2^4-T1^4)+sigma*A1*F13*(T3^4-T1^4);
printf("\n the net rate of heat transfer by radiation to the plate = %.1f kW",Q1*1e-3);