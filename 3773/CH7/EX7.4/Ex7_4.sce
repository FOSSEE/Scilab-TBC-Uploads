//Chapter 7: Loop, Slot and Horn Antennas
//Example 7-11.2
clc;

//Variable Initialization
n = 10    //Number of turns (unitless)
dia = 1e-3   //Diameter of copper wire (m)
dia_rod = 1e-2    //Diameter of ferrite rod (m)
len_rod = 10e-2    //Length of ferrite rod (m)
mu_r = 250 - 2.5*%i    //Relative permeability (unitless)
mu_er = 50    //Effective relative permeability (unitless)
f = 1e6    //Frequency (Hz)
c = 3e8    //Speed of light (m/s)
mu_0 = %pi*4e-7    //Absolute permeability (H/m)

//Calculations
wave_lt = c/f    //Wavelength (m)
radius = dia_rod/2
C_l = (2*%pi*radius)/(wave_lt)    //Circumference of loop (m)
Rr = 197*(mu_er**2)*(n**2)*(C_l**4)    //Radiation resistance (ohm)
Rf = 2*%pi*f*mu_er*(imag(mu_r)/real(mu_r))*mu_0*(n**2)*(%pi*radius**2)/len_rod    //Loss resistance(ohm)
conduc = 1/((7e-5**2)*f*%pi*mu_er)    //Conductivity (S/m)
delta = 1/(sqrt(f*%pi*mu_er*conduc))    //Depth of penetration(m)

RL = n*(C_l/dia)*sqrt((f*mu_0)/(%pi*conduc))    //Ohmic resistance (ohm)
k = Rr/(RL+abs(Rf))    //Radiation efficiency (unitless)

L = mu_er*(n**2)*(radius**2)*mu_0/len_rod    //Inductance (H)
Q = 2*%pi*f*L/(abs(Rf) + Rr + RL)    //Ratio of energy stored to energy lost per cycle (unitless)

fHP = f/Q    //Bandwidth at half power (Hz)


//Results
mprintf("The radiation efficiency is %.2e",k)
mprintf("\nThe value of Q is %.3f",Q)
mprintf("\nThe half-power bandwidth is %d Hz",fHP)
