clc;
p01=1; // Air inlet pressure in bar
T01=7+273;// Air inlet temperature in kelvin
p02=4; // Pressure at state 2 in bar
eff_c=0.82;// Isentropic efficiency of compressor
T03=800+273; // Maximum temperature at the turbine inlet in kelvin
eff_T=0.85; // Isentropic efficiency of the turbine
CV=43.1; // calorific value of fuel in MJ/kg
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
LS=0.85;
mf=1; // Let assume mass of fuel to be 1 kg

T_02=T01*(p02/p01)^((r-1)/r); // from T-S diagram
T02=T01+(T_02-T01)/eff_c; // Temperature after compression
Wc=Cpa*(T02-T01); // Work of compression
Q=Cpg*(T03-T02); // Heat supplied
p04=p01;p03=p02;
T_04=T03*(p04/p03)^((rg-1)/rg);
T04=T03-eff_T*(T03-T_04);
WT=Cpg*(T03-T04); // Turbine work
WN=WT-Wc; // Net work done
eff_th=WN/(Q/LS); // The thermal efficiency
ma_mf=(LS*CV*10^3/Q)-1; // AIR FUEL ratio
ma=mf*ma_mf;
sfc=(3600/(ma_mf*WN)); // specific fuel consumption
Wc_WT=(Wc*ma)/(WT*(ma+mf)); // work ratio

disp ("kJ/kg of air",Wc,"(i).Compressor work = ");
disp ("kJ/kg of air",Q,"(ii).Heat supplied = ");
disp ("kJ/kg of air",WT,"(iii).Turbine work = ");
disp ("kJ/kg of air",WN,"(iv).Net work = ");
disp ("%",eff_th*100,"(v).Thermal Efficiency = ");
disp (ma_mf,"(vi).Air/Fuel ratio = ")
disp ("kg/kWh",sfc,"(vii).Specific fuel consumption =");
disp (Wc_WT,"(viii).Ratio of compressor work to turbine work = ");
