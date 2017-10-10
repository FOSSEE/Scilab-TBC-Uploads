clc;
rp=4; // Pressure ratio
eff_c=0.86; // Compressor efficiency
eff_Thp=0.84;// High pressure turbine efficiency
eff_Tlp=0.8;// Low pressure turbine efficiency
eff_M=0.92; // Mechanical efficiency
T03=660+273; // in kelvin
T05=625+273; // In kelvin
T01=15+273; // Inlet temperature in kelvin
p01=1; // Inlet pressure in bar
Cp=1.005;// Specific heat of air  at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio of air
eff= 0.75; // Heat exchanger effectiveness

T_02=T01*(rp)^((r-1)/r);
T02=((T_02-T01)/eff_c)+T01;
T04=T03-((T02-T01)/eff_M);
// In HP turbine
T_04=T03-((T03-T04)/eff_Thp);
p_04=rp/(T03/T_04)^(r/(r-1));
// In LP turbine
p05=p_04;p_06=p01;
T_06=T05/(p05/p_06)^((r-1)/r);
T06=T05-(eff_Tlp*(T05-T_06));
T07=T02+eff*(T06-T02);
Q=Cp*(T03-T07+T05-T04);
Wc=Cp*(T02-T01);
WT=Cp*(T03-T04+T05-T06);
eff_th=(WT-Wc)/Q;

disp ("bar",p_04,"(i).Pressure of gas entering low pressure turbine = ");
disp ("%",eff_th*100,"Overall efficiency = ");
