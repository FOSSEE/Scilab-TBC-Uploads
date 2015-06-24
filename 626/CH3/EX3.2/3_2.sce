
clear;
clc;
close;
disp("Example 3.2")
Cv=450 //exhaust velocity at core in m/s
Nv=350 //exhaust velocity at nozzle in m/s
Cm=50 //Mass flow rate through core in kg/s
Nm=350 //Mass flow rate through nozzle in kg/s
//Calculations:
//Newton's second law
Fgc=Cm*Cv //gross thrust of the core
Fgf=Nm*Nv //gross thrust of the nozzle fan
disp(Fgc,"Gross thrust of the core in SI unit(N):")
disp(Fgf,"Gross thrust of the fan nozzles in SI unit(N):")
