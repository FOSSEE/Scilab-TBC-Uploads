clc;
p1=1; // Pressure before compression in bar
T1=350; // Temperature before compression in kelvin
T3=2000; // Temperature after combustion in kelvin
rp=1.3; // Pressure ratio
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

T2=T1*(rp)^((r-1)/r); // Temperature at the end of the compression
T4=T3*(1/rp)^((r-1)/r); // Temperature after expansion
Wc=Cp*(T2-T1); // Work done during compression
WT=Cp*(T3-T4); // Work done during expansion
WN=WT-Wc; // Net work done
T5=T4; // For a perfect heat exchange
q=Cp*(T3-T5); // Heat added
eff2=WN/q; // Efficiency of a modified Joule cycle
eff1=0.072220534; // Efficiency of a joule cycle
disp ("%",eff2*100,"Efficiency of a modified Joule cycle = ");
disp (eff2/eff1,"Improvement in efficiency = ");
