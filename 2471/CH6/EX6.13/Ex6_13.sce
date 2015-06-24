clear ;
clc;
// Example 6.13
printf('Example 6.13\n\n');
printf('Page No. 188\n\n');

// given
P = 1.5;// Pressure in bar
T = 111;// Temperature in degree celcius
m = 2;// mass flow rate of process liquid in kg/s
Cp = 4.01*10^3;// Mean Specific heat capacity in J/kg_K
Tl_i = 20;// Inlet temperature of liquid in degree celcius
Tl_o = 90;// Outlet temperature of liquid in degree celcius
Ps = 15;// Pressure of steam in bar
X = 0.97;// Dryness fraction of steam
Pa = 1.5;//Pressure after adiabatic expansion in bar
Ta = 80;// Temperature of injecting condensate in degree celcius

//(a)
Q = m*Cp*(Tl_o - Tl_i);// in W
L = 2227*10^3;// Latent heat of 1.5 bar steam in J/kg
m_a = Q/L;
printf('(a) Mass flow rate of 1.5 bar steam is %.3f kg/s \n',m_a)

//(b)
//from steam table, Specific enthalpy of 0.97 dry 15 bar absolute steam
h = ((843+(X*1946))*10^3);// in J/kg
//the balance for the desuperheater,when y is the mass flow rate(kg/s) of condensate at 80 deg C is,on the basis of 1kg/s of superheated steam: => (1*2731*10^3)+(335*10^3*y)=(1+y)*2693*10^3
y = (((2731-2693)*10^3)/((2693-335)*10^3))// in kg/s
m_b = m_a/(1+y);// in kg/s
printf('(b) Mass flow rate of 15 bar steam is %.3f kg/s \n',m_b)

//(c)
m_c = y*m_b;//in kg/s
printf('(c) Mass flow rate of condensateis %.3f kg/s\n',m_c)

//(d)
v = 30;// steam velocity in m/s
//from steam table
V = 1.16;// Specific volum of 1.5 bar saturated steam in m^3/kg
V_d = V*m_a;// in m^3/s
d = ((V_d*4)/(v*%pi))^0.5;// im m
printf('(d) The vapour main diameter is %3.2f m \n',d)

//(e)
l = 2.5;// Length of tubes in m
d_i = 10*10^-3;// Internal Diameter of tube in m
U = 1500;//  Overall heat transfer coefficent in W/m^2-K

a = %pi*d_i*l;// in m^2
T1 = T - Tl_i;// in degree celcius
T2 = T - Tl_o;// in degree celcius
Tm = ((T2-T1)/log(T2/T1));// logarithmic mean temperature of pipe in  degree celcius
A = Q/(U*Tm);// in m^2
N = A/a;
printf('(e) The number of tubes required is %3.0f \n',N)

