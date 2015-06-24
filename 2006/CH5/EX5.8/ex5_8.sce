clc;
m=0.1; // mass of nitrogen gas in kg
V1=0.1; // Initial volme of nitrogen gas in m^3
p1=1.2; // Initial pressure of nitrogen gas in bar
V2=0.075; // Final volume of nitrogen gas in m^3
Cpo=1.041; // Specific heat at constant pressure of nitrogen in kJ/kg K
R=0.2969393; // Characteristic gas constant of nitrogen in Kj/kg K
T1=(p1*10^2*V1)/(m*R); // Initial temperature of nitrogen gas 
T2=T1*(V2/V1); // Final temperature of nitrogen gas (constant pressure process)
Q=m*Cpo*(T2-T1); // Heat transfer to surroundings
W=p1*10^2*(V2-V1); // Work done
disp ("K",T2,"Final Temperature of nitrogen gas = ");
disp ("kJ",Q,"Heat transfer to surroundings = ");
disp ("The Work is done on the gas","kJ",W,"Work done = ");
