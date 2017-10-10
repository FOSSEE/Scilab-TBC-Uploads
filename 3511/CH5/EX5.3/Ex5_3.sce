clc;
rp=6; // Pressure ratio
T1=300; // Inlet air temperature to the compressor in kelvin
T3=577+273; // Inlet temperature of air at turbine in kelvin
Vr=240; // Volume rate in m^3/s
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K
p1=1; // pressure at state 1 in bar

T2=T1*(rp)^((r-1)/r); // Temperature at the end of the compression
T4=T3*(1/rp)^((r-1)/r); // Temperature after expansion
Wc=Cp*(T2-T1); // Work done during compression
WT=Cp*(T3-T4); // Work done during expansion
WN=WT-Wc; // Net work done
q=Cp*(T3-T2); // Heat supplied
row1=p1*10^5/(R*T1); // Density of air at state 1
P=WN*Vr*row1; // Power output
eff=WN/q; // Efficiency of a cycle
disp ("MW   (roundoff error)",P/1000,"Power Output = ");
disp ("%",eff*100,"Efficiency of a cycle = ");
