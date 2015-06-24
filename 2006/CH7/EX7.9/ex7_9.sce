clc;
p1=1; // Pressure of air at inlet of compressor in bar
T1=30; // Temperature of air at inlet of compressor in degree celcius
p2=12; // Delivery pressure of air in bar
T2=400; // Temperature of air at inlet of compressor in degree celcius
V2=90; // Velocity of air at exit in m/s
w=3740; // Power input to compressor in kW
k=1.4; // Index of reversible adiabatic process
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
wa=Cpo*(T2-T1)+V2^2/2000; // Actual specific work input
m=w/wa; // Mass flow rate of air
T2s=(T1+273)*(p2/p1)^((k-1)/k);// Isentropic discharge temperature
ws=Cpo*(T2s-(T1+273))+V2^2/2000; // Isentropic work
eff_com=ws/wa; // Isentrpic efficiency
disp ("%",eff_com*100,"Isentrpic efficiency of compressor =","K",T2s,"Isentropic discharge temperature = ");
