clc;
m=0.05; // mass flowrate of Freon 12 in kg/s
p1=300; // Pressure of Freon 12 at inlet in kpa
t1=5; // Temperature of Freon 12 at inlet in degree celcius
p2=1.2; // Pressure of Freon 12 at outlet in MPa
t2=80; // Temperature of Freon 12 at outlet in degree celcius
W=-2.3; // Power consumption of compressor in kW
//   (a).Heat transfer from the body of compressor to environment
// From  the table of properties of Freon 12
h1= 190.8; h2=230.4; // specific enthalpy in kJ/kg 
s1=0.71; s2=0.7514 // specific entropy in kJ/kg K
Q=m*(h2-h1)+W; // Heat transfer 
disp ("kW",Q,"(a).Heat transfer from the body of compressor to environment =");
//   (b).Adiabatic efficiency of the compressor
// For adiabatic compression p2=1.2Mpa,s2s=s1
t2s=61.7;// Temperature of Freon 12 at outlet in degree celcius
h2s=216.14; // specific enthalpy in kJ/kg 
ws=(h2s-h1); // Reversible adiabatic work
wa=W/m; // Actual work
eff_com=abs (ws/wa); // Adiabatic efficiency
disp ("%",eff_com*100,"(b).Adiabatic efficiency of the compressor = ");
