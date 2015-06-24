//Calculation of air fuel ratio
clc,clear
//Given:
d2=20,d_f=1.25 //Diameter of throat and fuel nozzle in mm
Cd_a=0.85,Cd_f=0.66 //Coefficient of discharge for air and fuel
z=5 //Elevation of the jet in mm
rho_a=1.2,rho_f=750 //Mass density of air and fuel in kg/m^3
deltaP_a=0.07 //Pressure drop of air in bar
g=9.806 //Accelaration due to gravity in m/s^2
//Solution:
//(a)Nozzle lip is neglected
A_f=(%pi/4)*d_f^2,A2=(%pi/4)*d2^2 //Area of cross section of fuel nozzle and venturi in mm^2
m_a1=Cd_a*A2*sqrt(2*rho_a*deltaP_a),m_f1=Cd_f*A_f*sqrt(2*rho_f*deltaP_a) //Air flow and fuel flow
A_F1=m_a1/m_f1 //Air fuel ratio
//(b)Nozzle lip is taken into account
m_a2=m_a1 //Air flow remain same
m_f2=Cd_f*A_f*sqrt(2*rho_f*(deltaP_a-z*10^-3*g*rho_f*10^-5)) //Fuel flow
A_F2=m_a2/m_f2 //Air fuel ratio
//(c)Minimum velocity required to start the fuel flow when nozzle lip is provided
//To just start the fuel flow pressure difference in venturi must be equivalent to the nozzle lip pressure
deltaP_a=z*10^-3*g*rho_f //Pressure difference in N/m^2
C2=sqrt(2*deltaP_a/rho_a) //Minimum velocity of air at throat in m/s
//Results:
printf("\n The air fuel ratio when the nozzle lip is neglected = %.1f",A_F1)
printf("\n The air fuel ratio when the nozzle lip is taken into account = %.3f",A_F2)
printf("\n The minimum velocity required to start the fuel flow when lip is provided = %.2f m/s",C2)
