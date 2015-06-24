clc
clear

//Input data
T=300 //Temperature in K
P=1.01325*10^5 //Absolute pressure in Pa
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
C_1=60 //Velocity of air in m/s
C_2=200 //Velocity of air in m/s
C_3=500 //Velocity of air in m/s
d_hg=13600 //Density of mercury in kg/m^3
g=9.81 //Acceleration due to gravity in m/s^2

//Calculation
a=sqrt(k*R*T) //Sound velocity in m/s
M_1=C_1/a //Mach number 
dP1=(P*C_1^2)/(2*R*T) //Difference in mercury levels in Pa
dP1_hg=(dP1/(d_hg*g))*1000 //Difference in mercury levels in mm of Hg
M_2=C_2/a //Mach number 
p1=(1+((k-1)/2)*M_2^2)^(k/(k-1)) //Stagnation to static pressure ratio 
Po=p1*P //Stagnation pressure in Pa
dP2=abs(Po-P) //Difference in mercury levels in Pa
dP2_hg=(dP2/(d_hg*g))*1000 //Difference in mercury levels in mm of Hg
M_3=C_3/a //Mach number & M_3=Mach number just before shock
My=0.723 //Mach number just after shock
p1=2.2530 //Ratio of pressure after shock to before shock from gas tables @My
Py=p1*P //Pressure after shock in Pa
p2=0.706 //Ratio of pressure after shock to Stagnation pressure from gas tables @My
Po=Py/p2 //Stagnation pressure in Pa
dP3=Po-Py //Difference in mercury levels in Pa
dP3_hg=(dP3/(d_hg*g))*1000 //Difference in mercury levels in mm of Hg

//Output
printf('Difference in mercury levels at velocity equal to:\n    (A)%2i m/s is %3.3f mm of Hg\n    (B)%3i m/s is %3.1f mm of Hg\n    (C)%3i m/s is %3i mm of Hg',C_1,dP1_hg,C_2,dP2_hg,C_3,dP3_hg)
