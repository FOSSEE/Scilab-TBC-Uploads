clc;
m=5; // Mass flow rate in kg/s
p01=1; // Pressure at state 1 in bar
p02=5; // Pressure at state 2 in bar
eff_c=0.85;// Compressor efficiency
eff_Thp=0.87; // High pressure turbine efficiency
eff_Tlp=0.82; // Low pressure turbine efficiency
T03=675+273; // HP turbine inlet temperature in kelvin
eff=0.7; // Effectiveness of the heat exchanger
T01=15+273; // Temperature at state 1 in kelvin
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio of air
R=287; // Characteristic constant in J/kg K
p03=p02;

T_02=T01*(p02/p01)^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
T04=T01-T02+T03;
T_04=T03-(T03-T04)/eff_Thp;
p04=p03/(T03/T_04)^(r/(r-1));
p05=p01;
T_05=T04/(p04/p05)^((r-1)/r);
T05=T04-eff_Tlp*(T04-T_05);
T0x=eff*(T05-T02)+T02;
Wlpt=Cpa*(T04-T05);
Plpt=Wlpt*m;
Q=Cpa*(T03-T0x);
eff_th=Wlpt/Q;

disp ("Intermediate pressure p04 and temperature T04 between the two turbine stages ");
disp ("K",T04,"To4 = ","bar",p04,"P04 = ");
disp ("kW",Plpt,"Power output of LP turbine = ");
disp ("kJ/kg",Q,"Heat supplied = ");
disp ("%",eff_th*100,"The Overall efficiency = ");
