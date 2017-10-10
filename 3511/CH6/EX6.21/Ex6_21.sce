clc;
T01=270+273; // Temperature at state 1 in kelvin
T03=T01;
p01=1; // Inlet pressure in bar
rp=6; // Pressure ratio
eff_c=0.85; // Compressor efficiency
T05=1150+273; // Temperature at inlet to expansion in kelvin
eff_T=0.9; // Turbine efficiency
n=1.24; // Polytropic index
R=10.05; // in kJ/kg K

T_02=T01*rp^((n-1)/n);
T02=T01+(T_02-T01)/eff_c;
Cv=R/(n-1);
Cp=R+Cv;
Wc=2*Cp*(T02-T01);
T_06=T05/rp^((n-1)/n);
T06=T05-eff_T*(T05-T_06);
WT=2*Cp*(T05-T06);
Q=Cp*(T05-T02)+Cp*(T05-T06);
WN=WT-Wc;
eff_th=WN/Q;

disp ("%",eff_th*100,"The Cycle efficiency = ");
