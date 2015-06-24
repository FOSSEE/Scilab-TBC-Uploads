clc;
clear;
//Example 4.24
//1.WITHOUT SHIELD
sigma=5.67*10^-8        
e1=0.12;
e2=0.15;
T1=100  //[K]
T2=300  //[K]
r1=0.015    //[m]
r2=0.045    //[m]
L=1         //[m]
A1=2*%pi*r1*L   //[sq m]
Q_by_L=2*%pi*r1*sigma*(T1^4-T2^4)/(1/e1+(r1/r2)*(1/e2-1))   //[W/m]
//-ve saign indicates that the net heat flow is in the radial inward direction
//2.WITH CYLINDRICAL RADIATION SHIELD
e3=0.10;
e4=0.05;
r3=0.0225   //[m]
Qs_by_L=2*%pi*r1*sigma*(T1^4-T2^4)/(1/e1+r1/r2*(1/e2-1)+(r1/r3)*(1/e3+1/e4-1))  //[W/sq m]
red=(abs(Q_by_L)-abs(Qs_by_L))*100/abs(Q_by_L)  //percent reduction in heat gain

//Radiation network approach
A3=2*%pi*r3     //[sq m]
A2=2*%pi*r2     //[sq m]
F13=1;
F32=1;
R1=(1-e1)/(e1*A1)
R2=1/(A1*F13)
R3=(1-e3)/(e3*A3)
R4=(1-e4)/(e4*A3)
R5=1/(A3*F32)
R6=(1-e2)/(e2*A2)

Qs=sigma*(T1^4-T2^4)/((1-e1)/(e1*A1)+1/(A1*F13)+(1-e3)/(e3*A3)+(1-e4)/(e4*A3)+1/(A3*F32)+(1-e2)/(e2*A2))        
printf("\n With cylindrical radiaiton shield Heat gained by fluid per 1 m lengh of tube is %f W/m\n",Qs_by_L);
printf("\nPercent reduction in heat gain is %f percent\n",red);
printf("\nWith radiaiton network approach %f W/sqm ",Qs);
