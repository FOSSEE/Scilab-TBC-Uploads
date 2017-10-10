clc;
T01=27+273; // Inlet temperature in kelvin
p01=1; // Inlet pressure in bar
rp=3; // Pressure ratio
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
R=287; // Characteristic constant in J/kg K

T_02=T01*rp^((r-1)/r);
// Turbines 70 years ago
eff_c=0.65; // Compressor efficiency 
eff_T=0.7; // Turbine efficiency
T03=700+273; // in kelvin
T02=T01*(1+((rp^((r-1)/r)-1)/eff_c));
T04=T03*(1-eff_T*(1-(1/rp^((rg-1)/rg))));
eff_th=(Cpg*(T03-T04)-Cpa*(T02-T01))/(Cpg*(T03-T02));
WR=(Cpg*(T03-T04)-Cpa*(T02-T01))/(Cpg*(T03-T04));

disp (WR,"Work ratio = ",eff_th*100,"The Efficiency = ","(i).70 years ago");

//Modern turbines
eff_c=0.85; // Compressor efficiency 
eff_T=0.9; // Turbine efficiency
T03=1000+273; // in kelvin
T02=T01+(T_02-T01)/eff_c;
T_04=T03/rp^((rg-1)/rg);
T04=T03-eff_T*(T03-T_04);
Wc=Cpa*(T02-T01);
WT=Cpg*(T03-T04);
WN=WT-Wc;
eff_th=WN/(Cpg*(T03-T02));
WR=WN/WT;

disp (WR,"Work ratio = ","%",eff_th*100,"The Efficiency = ","(ii).Modern turbines");
