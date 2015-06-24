clc;
ps=6.89+1; // Pressure of steam produced in bar (Absolute)
x=0.96; // Quality of steam produced
f=75; // Steady flow of water in litres
t=9.5; // Time consumption of water in minutes
tf=685; //Time consumption of 10 litre fuel in seconds
Vf=10; // consumption of fuel in litres
Sf=0.85; // specific gravity of water
CV=43125; // Calorific value of fuel in kJ/kg
ms=f/(t*60);// Steam generation
mf=Vf*Sf/tf; // consumption of fuel
// From steam tables at ps
hf=718.5; hfg=2050; // specific enthalpy in kJ/kg 
hs=hf+x*hfg; // specific enthalpy of steam produced
hFW=146.7; // Enthalpy of feed water at 35 degree celcius
eff_boiler=(ms*(hs-hFW))/(mf*CV); // Boiler Efficiency
disp ("%",eff_boiler*100,"Boiler Efficiency = ");
