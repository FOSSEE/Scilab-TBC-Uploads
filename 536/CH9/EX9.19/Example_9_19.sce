clc;
clear;

printf("\n Example 9.19\n");
d=2; //Diameter of the cylinder
h=1; //Depth of insulated cylinder
A1=%pi*d^2/4; //Radiant heater surface
A2=A1; //Under-Surface of the vessel
A_R=%pi*d*h;
T1=1500;
T2=373;
//From Figure 9.40ii, with i = 1, j = 2
r1=1;
r2=1;
L=1;
//The view factor may also be obtained from Figure 9.39ii as follows:
//Using the nomenclature of Figure 9.39
R1=r1/L;
R2=r2/L;
S=1+(1+R2^2)/(R1^2);
F12=0.5*(S-(S^2-4*(r2/r1)^2)^0.5);
sigma=5.67e-8;
//Using the summation rule
//F11=0
F1R=1-F12;;
F2R=F1R;
Q2=(A1*F12+((1/(A1*F1R)+(1/(A2*F2R))))^-1)*sigma*(T1^4-T2^4);
printf("\n The rate of radiant heat transfer to the vessel = %d kW",Q2*1e-3);
//If the surroundings without insulation are surface 3 at
T3=290;
F23=F2R;
//from equation 9.135
Q2_d=sigma*A1*F12*(T1^4-T2^4)+sigma*A2*F23*(T3^4-T2^4);
printf("\n The rate of radiant heat transfer to the vessel\n if the insulation were removed = %.0f kW",Q2_d*1e-3);
red=(Q2-Q2_d)/Q2*100; //Percentage Reduction
printf("\n\n Reduction percentage = %.0f per cent",red);
