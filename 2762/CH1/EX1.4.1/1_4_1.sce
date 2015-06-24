//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.4-1
//Introduction to engineering principles and units
//given data
//calculation of gas constant R
//Assuming standard conditions
p=14.7; //atmospheric pressure in psia
v=359;//volume in feet cube
n=1;//number of moles in lb mol
t=492;//temp in degree R
r=(p*v)/(n*t);//gas constant unit: (feet*feet*feet*psia)/(lb mol*degree R)
mprintf("the gas constant in given units %f (ft3.psia/lb mol deg R)",r);
//calculation in SI units
P=101325;//pressure in pascals
V=22.414;//volume in meter cube
N=1;//moles in kg mol
T=273.15;//temperature in kelvin
R=(P*V)/(N*T);//gas constant unit: 
mprintf(" the gas constant in SI units %f (m3*Pa)/(kg mol K)",R);
