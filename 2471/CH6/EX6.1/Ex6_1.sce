clear ;
clc;
// Example 6.1
printf('Example 6.1\n\n');
printf('Page No. 142\n\n');

// given
L = 2.5;// Length of tubes in metre
Do = 10*10^-3;// Internal diameter of tubes in metre
m = 3.46;// mass flow rate in kg/s
Th = 120;// Temperature of condening steam in degree celcius
Tl_i = 20;// Inlet temperature of liquid in degree celcius
Tl_o = 80;// Outlet temperature of liquid in degree celcius
Cp = 2.35*10^3;// Specific heat capacity of liquid in J/kg-K
U = 950;// Overall heat transfer coefficent in W/m^2-K

T1 = Th- Tl_i;// in degree celcius
T2 = Th- Tl_o;// in degree celcius
Tm = ((T2-T1)/log(T2/T1));// logarithmic mean temperature of pipe in  degree celcius
a = %pi*Do*L;//Surface area per tube in m^2
A = ((m*Cp*(Tl_o - Tl_i))/(U*Tm));// in m^2
N = A/a;
printf('The number of tubes required is %3.0f',N)
