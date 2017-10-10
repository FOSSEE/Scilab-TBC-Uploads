clc;
eff_c=0.8; // Isentropic efficiency of compression each stage
eff_CT=0.88; // Isentropic efficiency of compressor turbine
eff_PT=0.88; // Isentropic efficiency of power turbine
eff_trans=0.98; // Turbine to compressor transmission efficiency
rp=3; // Pressure ratio in each stage of compression
T08=297; // Temperature after intercooler in kelvin
ma=15; // Air mass flow in kg/s
eff_reg=0.8; // Regenerator effectiveness
del_P=0.1; // Regenerator gas side pressure loss in bar
T01=327; // Ambient temperature in kelvin
p01=1; // Ambient pressure in bar
T03=1000; // Maximum cycle temperature in kelvin
CV=43.1; // Calorific value in MJ/kg
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
p03=rp^2; // Pressre at state 3 in bar
T_07=T01*(rp)^((r-1)/r);
T07=T01+(T_07-T01)/eff_c;
WLPC=ma*Cpa*(T07-T01); //  Work of low pressue compressor
T_02=T08*(rp)^((r-1)/r);
T02=T08+(T_02-T08)/eff_c;
WHPC=ma*Cpa*(T02-T08);
WC=WLPC+WHPC; // Compressor work
WCa=WC/eff_trans; // Actual compressor work
// Neglecting effect of mf
T09=T03-(WCa/(ma*Cpg));
T_09=T03-(T03-T09)/eff_PT;
p09=p03/(T03/T_09)^(rg/(rg-1));
p04=p01+del_P;
T_04=T09*(p04/p09)^((rg-1)/rg);
T04=T09-eff_PT*(T09-T_04);
WTP=ma*Cpg*(T09-T04); // Work output of power turbine
T05=T02+eff_reg*(T04-T02);
mf=(ma*Cpg*(T03-T05))/(CV*10^3);
sfc=mf*3600/(WTP);//Specifc fuel consumption
eff_th=WTP/(mf*CV*10^3); // Thermal efficiency


disp ("kW   (roundoff error)",WTP,"Work output of power turbine = ");
disp ("kg/kW h",sfc,"Specifc fuel consumption = ");
disp ("%",eff_th*100,"Thermal efficiency = ");
