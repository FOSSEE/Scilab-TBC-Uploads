clc;
p1=15;// Inlet pressure of condenser in kPa
x=0.92; // Quality of steam
ms=25; // mass flow rate of steam in kg/s
d_t=12; // temperature rise of water 
Cpw=4.1868; // Specific heat of water in kJ/kg K
hfg=225.94; h4_3=2599.1; // specific enthalpy in kJ/kg
h1=(1-x)*hfg+x*h4_3; // specific enthalpy 
h2=225.94; // specific enthalpy in kJ/kg
Q=ms*(h1-h2); // Heat transfer rate in condenser
mw=Q/(Cpw*d_t); // Mass flow rate of water 
disp ("kg/s",mw,"Mass flow rate of water = ","kW",Q,"Heat transfer rate in condenser = ");
