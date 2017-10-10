clc;
T1=300; // Minimum operating temperature in kelvin
T3=900; // Maximum operating temperature in kelvin
p1=1; // Minimum pressure in bar
p3=4; // Maximum pressure in bar
m=1600; // Mass flowrate in kg/min
r=1.4; // Specific heat ratio
Cp=1.005; // Specific heat at constant pressure in kJ/kg K

p2=p3; p4=p1; // Constant pressure process
c=(p2/p1)^((r-1)/r); 
eff=(1-1/c); // The efficiency of the cycle
t=T3/T1; // ratio of maximum and minimum temperature
W=Cp*T1*(t*(1-1/c)-(c-1)); // Work output per kg of air
P=(m/60)*W; // Shaft power available
disp ("%",eff*100," Thermal efficiency of the plant = ");
disp ("kW   (roundoff error)",P,"Shaft power available for external Load = ");
