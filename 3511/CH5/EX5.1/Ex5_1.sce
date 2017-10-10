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
p2=rp*p1; // Pressure at state 2
p3=p2; p4=p1; // Constant pressure process
V1=R*T1/(p1*10^5); // specific Volume at state 1
V2=R*T2/(p2*10^5); // specific Volume at state 2
V3=R*T3/(p3*10^5); // specific Volume at state 3
V4=R*T4/(p4*10^5); // specific Volume at state 4
imep=WN*10^3/(V4-V2); // Mean effective pressure
q=Cp*(T3-T2); // Heat supplied
eff=WN/q; // Efficiency of a Joule cycle
disp ("bar",imep*10^-5,"Mean effective pressure = ");
disp ("%",eff*100,"Efficiency of a Joule cycle = ");

