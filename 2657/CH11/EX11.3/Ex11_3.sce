//Calculation of suction at throat
clc,clear
//Given:
d=10,l=12 //Bore and stroke in cm
n=4 //Number of cylinders
N=2000 //Speed of engine in rpm
d2=3 //Diameter of throat in cm
eta_vol=70 //Volumetric efficiency
rho_a=1.2 //Density of air in kg/m^3
Cd_a=0.8 //Coefficient of discharge for air
//Solution:
V_s=(%pi/4)*d^2*l*n*10^-6 //Swept volume of engine in m^3
V_act=eta_vol*V_s*N/(2*100*60) //Actual volume sucked in m^3/s
m_a=V_act*rho_a //Mass of air sucked in kg/s
deltaP_v=(m_a*4/(Cd_a*%pi*d2^2*10^-4))^2/(2*rho_a) //Pressure drop at venturi in pascal
//Results:
printf("\n The suction at the throat = %.4f bar\n\n",deltaP_v/10^5)
//Answer in the book is wrong
