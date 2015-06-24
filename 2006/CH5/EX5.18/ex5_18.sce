clc;
p1=50; // Pressre of steam at diffuser inlet in kPa
T1=150; // Temperature of steam at diffuser inlet in degree celcius
V1=180; // Velocity of steam at diffuser inlet in m/s
A1=1000; // area of diffuser inlet in cm^2
V2=90; // Velocity of steam at diffuser outlet in m/s
p2=1; // Pressre of steam at diffuser outlet in bar
Q=120; // Heat loss to the surroundings in kW
v1=3.24; // Specific volume of steam from superheated steam table in m^3/kg at inlet
h1=2645.9; //  // Specific enthalpy of steam from superheated steam table in m^3/kg at inlet
m=V1*A1*10^-4/v1; // Mass flow rate of steam
q=Q/m; // Heat transfer per unit mass of steam
h2=q+h1+(V1^2-V2^2)/2000; //  Specific enthalpy of steam from SSSF energy equationat outlet
v2=1.704; // Specific volume of steam from superheated steam table in m^3/kg at outlet
A2=m*v2/V2; // Area of diffuser exit 
disp ("cm^2",A2*10^4,"Area of diffuser exit (Error in textbook)= ");
