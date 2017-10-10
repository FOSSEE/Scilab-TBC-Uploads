clc;
T1=290; // Compressor inlet temperature in kelvin
T2=460; // Compressor outlet temperature in kelvin
T3=900+273; // Turbine inlet temperature in kelvin
T4=467+273; // Turbine outlet temperature in kelvin
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio
R=287; // Characteristic gas constant in J/kg K

c=T2/T1; // Temperature ratio
rpc=c^(r/(r-1)); // Compression ratio
WN=(Cp*((T3-T4)-(T2-T1))); // Specific power
T5=T4; // Assuming regenerator effectiveness to be 100%
eff=WN/(Cp*(T3-T5)); // Overall efficiency of the cycle
Wc=Cp*(T2-T1); // Work required to drive the compressor
rpt=(T3/T4)^(r/(r-1)); // Turbine pressure ratio
disp (rpt," Turbine pressure ratio =  ",rpc," Compressor pressure ratio = ","(i).");
disp ("kJ/kg",WN,"(ii). Specific power output = ");
disp ("%",eff*100, "(iii). Overall efficiency of the cycle = ");
disp ("kJ/kg",Wc," (iv). Work required to drive the compressor = ");
