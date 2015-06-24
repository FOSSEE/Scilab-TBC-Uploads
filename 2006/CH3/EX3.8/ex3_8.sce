clc;
T=-58.7; //Normal boling point of CF3Br in Degree Celcius
Tc=340.9; // Crictical temperature of CF3Br in K
pc=4.05; // Crictical pressure of CF3Br in MPa
M=148.9; // Moleclar mass of CF3Br
p=1.01325*10^5; // Atmospheric pressure in N/m^2
R1=8314.4; // Universal gas constant in J/kmol K
R=R1/M; // Gas constant of CF3Br
a=(0.42748*R^2*Tc^2.5)/(pc*10^6); // Constant of Redlich-Kwong equation of state
b=(0.08664*R*Tc)/(pc*10^6); // Constant of Redlich-Kwong equation of state
vi=(R*(T+273))/p; // Ideal gas volume for assigning initial value
// By substituting these values in the Redlich-Kwong equation of state 
 // vi_1=(R*(T+273)/p)+b-((a/(p*(273+T)^0.5*vi))) and and solving it by trial and error method we get
vi_1=0.11443; // in m^3/kg
disp ("m^3/kg",vi_1,"Saturated vapour volume");
