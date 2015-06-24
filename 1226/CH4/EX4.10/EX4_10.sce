clc;funcprot(0);//EXAMPLE 4.10
// Initialisation of Variables
r=7;....................//Compression Ratio
t2=715;.................//Temperature at the end of isentropic compression in Kelvin
t4=1610;................//Temperature at the end of expansion in Kelvin
//Calculations
vr2=65.8;..................//From steam table
u2=524.2;..................//From steam table
vr4=5.69;..................//From steam table
u4=1307.63;..................//From steam table
vr1=r*vr2;
t1=338;..................//From steam table
u1=241.38;..................//From steam table
vr3=vr4/r;
t3=2800;..................//From steam table
u3=2462.5;..................//From steam table
W=(u3-u2)-(u4-u1);..................//Work done
Qa=(u3-u2);..........................//Heat added
eta=W/Qa;...........................//Cycle efficiency
disp(W,"The cycle work (in kJ/kg):")
disp(eta*100,"The cycle efficiency (in %):")
