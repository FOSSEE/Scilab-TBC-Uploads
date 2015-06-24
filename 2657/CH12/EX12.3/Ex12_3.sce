//Calculation of orifice diameter
clc,clear
//Given:
bp=15 //Brake power per cylinder in kW
N=2000 //Engine speed in rpm
bsfc=0.272 //Brake specific fuel consumption in kg/kWh
API=32 //American Petroleum Institute specific gravity in degreeAPI
theta_i=30 //Period of injection in degrees
P_i=120 //Fuel injection pressure in bar
P_c=30 //Combustion chamber pressure in bar
Cd=0.9 //Coefficient of discharge for the injector
function rho=specificgravity(API),rho=141.5/(131.5+API),endfunction //Specific gravity(rho) as a function of API
//Solution:
s=specificgravity(API) //Specific gravity of fuel
m_f=bsfc*bp*2/(N*60) //Fuel consumption in kg
t=theta_i/360*60/N //Time for injection in s
m_f=m_f/t //Fuel consumption per cycle in kg/s
A_f=m_f/(Cd*sqrt(2*s*1000*(P_i-P_c)*10^5)) //Orifice area of fuel injector in m^2
A_f=A_f*10^6 //Orifice area of fuel injector in mm^2
d_f=sqrt(4*A_f/%pi) //Diameter of fuel orifice in mm
//Results:
printf("\n The diameter of the fuel orifice, d = %.2f mm\n\n",d_f)
