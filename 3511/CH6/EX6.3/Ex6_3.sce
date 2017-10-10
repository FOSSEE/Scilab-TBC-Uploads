clc;
eff_c=0.82; // Isentropic efficency of the compressor 
eff_T=0.85; // Isentropic efficency of the turbine
eff_m=0.99; // Mechanical transmission efficiency
rp=7; // Pressure ratio
T03=1000; // Maximum cycle temperature in kelvin
eff_comb=0.97; // Combustion efficiency 
CV=43.1; // Calorific value in MJ/kg
ma=20; // Air mass flow rate in kg/s
eff_reg=0.75; // Regenerator effectiveness
del_P=0.1; // Regenerator gas side pressure loss in bar
T01=327; // Ambient temperature in kelvin
p01=1; // Ambient pressure in bar
Cpa=1.005;// Specific heat of air  at constant pressure in kJ/kg K
Cpg=1.147;// Specific heat of fuel at constant pressure in kJ/kg K
rg=1.33;// Specific heat ratio of fuel
r=1.4; // Specific heat ratio of air

//(i).With Regeneration and pressure loss
T_02=T01*(rp)^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
p04=p01+del_P;
p03=rp/p01;
T_04=T03*(p04/p03)^((rg-1)/rg);
T04_1=T03-eff_T*(T03-T_04);
T05=T02+eff_reg*(T04_1-T02);
mf1=(ma*Cpg*(T03-T05))/(CV*10^3*eff_comb); // By neglecting the effect of change in mass flow rate due to mf in combustion chamber
p03_p04_1=p03/p04;
WT1=(ma+mf1)*Cpg*(T03-T04_1); // Turbine work
WN1=(ma+mf1)*Cpg*(T03-T04_1)-(ma*Cpa*(T02-T01)/eff_m); // Net work output
sfc1=mf1*3600/WN1; // Specifc fuel consumption
eff_th1=WN1/(mf1*CV*10^3); // Thermal efficiency



//(ii).Without Regenerator and without pressure loss

p04=p01;
T_04=T03*(p04/p03)^((rg-1)/rg);
T04_2=T03-eff_T*(T03-T_04);
mf2=(ma*Cpg*(T03-T02))/(CV*10^3*eff_comb);
WT2=(ma*Cpg*(T03-T04_2));
WN2=(ma*Cpg*(T03-T04_2))-(ma*Cpa*(T02-T01)/eff_m); // Net work output
p03_p04_2=p03/p04;
sfc2=mf2*3600/WN2; // Specific fuel consumption
eff_th2=WN2/(mf2*CV*10^3); // Thermal efficiency


//(iii).With Regenerator and without pressure loss
T_02=T01*(rp)^((r-1)/r);
T02=T01+(T_02-T01)/eff_c;
p04=p01;
p03=rp/p01;
T_04=T03*(p04/p03)^((rg-1)/rg);
T04_3=T03-eff_T*(T03-T_04);
T05=T02+eff_reg*(T04_3-T02);
WT3=(ma*Cpg*(T03-T05));
mf3=(ma*Cpg*(T03-T05))/(CV*10^3*eff_comb); // By neglecting the effect of change in mass flow rate due to mf in combustion chamber
p03_p04_3=p03/p04;
WN3=(ma+mf3)*Cpg*(T03-T04_3)-(ma*Cpa*(T02-T01)/eff_m); // Net work output
sfc3=mf3*3600/WN3; // Specifc fuel consumption
eff_th3=WN3/(mf3*CV*10^3); // Thermal efficiency


printf("Quantities \t\t\t \t\tRegenerator \t\t\t\t\t\t Without");
printf ("\n\t\t\t\twith Del_P\t\twithout Del_P\t\t\t\tregenerator and Del_P");
printf ("\n\t\t\t\t(roundoff error)\t(roundoff error)\t\t\t(roundoff error)");
printf("\n\n P03/P04\t\t\t%f\t\t%f\t\t\t\t\t%f",p03_p04_1,p03_p04_3,p03_p04_2);
printf ("\n\nT04 (K)\t\t\t\t%f\t\t%f\t\t\t\t\t%f",T04_1,T04_3,T04_2);
printf ("\n\nmf (kg/s)\t\t\t%f\t\t%f\t\t\t\t\t%f",mf1,mf3,mf2);
printf ("\n\nWT (kW)\t\t\t\t%f\t\t%f\t\t\t\t\t%f",WT1,WT3,WT2);
printf ("\n\nsfc (kg/kW h)\t\t\t%f\t\t%f\t\t\t\t\t%f",sfc1,sfc3,sfc2);
printf ("\n\nefficiency (in percentage)\t%f\t\t%f\t\t\t\t\t%f",eff_th1*100,eff_th3*100,eff_th2*100);

printf ("\n\nAs can be seen from the table that pressure loss plays a major role in the efficiency than the regenerator. \n\nHence,more care should be taken in the design to have minimum pressure loss.");
