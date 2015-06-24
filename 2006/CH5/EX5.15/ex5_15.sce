clc;
W=500; // Power output from steam turbine in MW
Q=10; // Heat loss to surroundings in MW
p1=12.5; // Pressure of staem at steam turbine inlet in MPa
p2=10; // Pressure of staem at steam turbine outlet in kPa
V1=50; // Velocity of steam at steam turbine inlet in m/s
V2=100; // Velocity of steam at steam turbine outlet in m/s
x2=0.85; // Quality of steam at steam turbine outlet
h1=3341.8; // Specific enthalpy of staem at inlet from steam table in kJ/kg
hf2=191.83; hg2=2584.7;// Specific enthalpies of fluid and steam at outlet from steam table in kJ/kg
h2=(1-x2)*hf2+x2*hg2;// Specific enthalpy of staem at outlet in kJ/kg
m=(W-Q)*10^3/((h1-h2)+(V1^2-V2^2)/2000); // Mass flow rate of steam
disp ("kg/s",m,"Mass flow rate of steam = ");
