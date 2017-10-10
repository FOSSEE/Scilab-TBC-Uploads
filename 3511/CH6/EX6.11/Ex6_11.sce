clc;
eff_pe=0.88; // Compressor and turbine polytropic efficiencies
T01=310; // Temperature at LP compressor inlet in kelvin
p01=14; // Pressure at LP compressor inlet in bar
rp=2; // Compressor pressure ratio
T03=300;// Temperature at HP compressor inlet in kelvin
m=180; // Mass flow of Helium in kg/s
Q=500; // Heat input to gas turbine in MW
T07=700; // Helium Temperature at entry to reactor channels in kelvin
P_precoller=0.34; // Pressure loss in pre-cooler and intercooler in bar
P_loss_HE=0.27; // Pressure loss in heat exchanger in bar
P_loss_RC=1.03; // Pressure loss in reactor channel in bar
eff_pc=0.88; // Polytropiic efficiency
Cp=5.19;// Specific heat   at constant pressure in kJ/kg K
r=1.66; // Specific heat ratio 

n_1_n=((r-1)/r)*(1/eff_pc);
T02=T01*rp^n_1_n;
T04=T03*rp^n_1_n;
T05=((Q*10^3)/(m*Cp))+T07;
T_press_loss=P_precoller+P_loss_HE+P_loss_RC; // Total pressure loss
p05=56-T_press_loss;
p06=p01+P_precoller+P_loss_HE;
n__1_n=eff_pc*((r-1)/r);
T06=T05/(p05/p06)^n__1_n;
WC=m*Cp*((T02-T01)+(T04-T03)); // Work of compressor
WT=m*Cp*(T05-T06); // Work of Turbine
WN=WT-WC; // Net work output
eff_th=WN/(Q*10^3); // Efficiency
eff=(T07-T04)/(T06-T04); // Effectiveness

disp ("MW   (roundoff error)",WN/1000,"Power output = ");
disp ("%   (roundoff error)",eff_th*100,"Thermal efficiency = ");
disp ("%   (roundoff error)",eff*100,"Effectiveness = ");
