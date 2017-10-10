clc;
rp=4;// Overall pressure ratio 
T1=300; // Temperature at state 1 in kelvin
T3=1000; // Temperature at state 3 in kelvin
Cp=1; // Specific heat at constant pressure in kJ/kg K
Cv=0.717; // Specific heat at constant volume in kJ/kg K

// Basic cycle
r=Cp/Cv; // Specific heat ratio
c=rp^((r-1)/r);
t=T3/T1; // Temperature ratio
WN=Cp*T1*(t*(1-1/c)-(c-1)); // Net work output
eff=(1-1/c)*100;  // Efficiency of the cycle

// Basic cycle with heat exchanger
WN_he=WN;
eff_he=(1-c/t)*100; // Efficiency of the cycle with heat exchanger
dev_WN1=(WN_he-WN)*100/WN; //Percentage deviation of Net work from basic cycle
dev_eff1=(eff_he-eff)*100/eff; // Percentage deviation of efficiency from basic cycle

// Basic cycle with intercooled compressor
WN_ic=(Cp*T1)*(t*(1-1/c)-2*(sqrt(c)-1));
eff_ic=(1-(((t/c)+sqrt(c)-2)/(t-sqrt(c))))*100;
dev_WN2=(WN_ic-WN)*100/WN; //Percentage deviation of Net work from basic cycle
dev_eff2=(eff_ic-eff)*100/eff; // Percentage deviation of efficiency from basic cycle

// Basic cycle with heat exchanger and intercooled compressor
WN_iche=WN_ic;
eff_iche=(1-((2*(sqrt(c)-1))/(t*(1-1/c))))*100;
dev_WN3=(WN_iche-WN)*100/WN; //Percentage deviation of Net work from basic cycle
dev_eff3=(eff_iche-eff)*100/eff; // Percentage deviation of efficiency from basic cycle

printf ("Cycle \t\t\t\t\t\t   WN(kJ/kg) \t\tefficiency (in percentage)\t\t  percentage Change in WN \t\tpercentage change in efficiency");
printf("\n\t\t\t\t\t\t(roundoff error)    \t(roundoff error)   \t\t\t (roundoff error)\t\t\t\t (roundoff error)");
printf ("\n\nBasci cycle \t\t\t\t\t %f \t\t\t %f\t\t\t\t\t - \t\t\t\t\t -",WN,eff);
printf ("\n\nWith Heat Exchanger \t\t\t\t %f \t\t\t %f\t\t\t\t\t %f \t\t\t %f",WN_he,eff_he,dev_WN1,dev_eff1);
printf ("\n\nWith intercooling \t\t\t\t %f \t\t\t %f\t\t\t\t\t %f \t\t\t %f",WN_ic,eff_ic,dev_WN2,dev_eff2);
printf ("\n\nWith Heat Exchanger & Intercooling \t\t %f \t\t\t %f\t\t\t\t\t %f \t\t\t %f",WN_iche,eff_iche,dev_WN3,dev_eff3);
