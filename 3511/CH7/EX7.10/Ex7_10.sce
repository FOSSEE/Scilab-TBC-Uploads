clc;
ma=(12*10^4)/3600; // Air flow rate in kg/s
T01=15+273; // Temperature in kelvin
rp=4; // pressure ratio
p01=1.03; // Pressure in bar
T02=182+273; // Temperature in kelvin
T03=815+273; // Temperature in kelvin
T04=650+273; // Temperature in kelvin
ci=800*1000/3600; // Velocity in m/s
eff_nozzle=0.90; // Nozzle efficiency
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air
p03=4.12; // in bar

eff_c=1/((T02-T01)/(T01*((rp^((r-1)/r))-1)));
eff_T=eff_c;
Wc=ma*Cpa*(T02-T01);
rp_T=(1/(1-((T03-T04)/(eff_T*T03))))^((r/(r-1)));
p04=p03/rp_T;
p04_pc=1/(1-((rg-1)/((rg+1)*eff_nozzle)))^(rg/(rg-1));
p5=p01;
T_5=T04*(p5/p04)^((rg-1)/rg);
T5=T04-eff_nozzle*(T04-T_5);
cj=sqrt(2*Cpg*10^3*(T04-T5));
F=ma*(cj-ci);

disp ("%",eff_c*100,"Efficiency of the compressor = ");
disp ("%",eff_T*100,"Efficiency of the Turbine = ");
disp ("kW",Wc,"Compressor work = ");
disp ("m/s   (roundoff error)",cj,"The exit speed of gases = ");
disp ("N   (roundoff error)",F,"Thrust developed = ");
