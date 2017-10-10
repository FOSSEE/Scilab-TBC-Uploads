clc;
rlp=3; // Pressure ratio
rhp=rlp;
eff_c=0.82; // Compressor efficiency
T04=650+273; // Temperature at state 4 in kelvin
T05=540+273; // Temperature at state 5 in kelvin
eff_T=0.87; // Efficiency of turbine
T01=15+273; // Temperature at compressor inlet in kelvin
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

T02=T01*(1+(rlp^((r-1)/r)-1)/eff_c);
T03=T02*(1+(rhp^((r-1)/r)-1)/eff_c);
T_06=T05/(rlp)^(2*(rg-1)/rg);
T06=T05-eff_T*(T05-T_06);
x1=1-((T02-T01)/(((Cpg/Cpa)*(T05-T06)-(T03-T02))));
x=abs (x1);
T07=T04*(1-(eff_T*(1-(1/rhp^((rg-1)/rg)))));
eff_th=(x*Cpg*(T04-T07))/((1-x)*Cpg*(T05-T03)+x*Cpg*(T04-T02));

disp ("%",(x)*100,"Percentage of the total air intake that passes to the power turbine = ");
disp ("%   (Roundoff error)",(eff_th)*100,"The overall efficiency = ");

