clc
T1=1000; //K
T2=500; //K
T0=300; //K
Q=7200; //kJ/min

disp("(i) Net change of entropy :")
dS_source=-Q/T1;
dS_system=Q/T2;
dS_net=dS_source+dS_system;
disp("dS_net=")
disp(dS_net)
disp("kJ/min.K")


disp("(ii) Decrease in available energy :")
AE_source=(T1-T0)*(-dS_source); //Available energy with the source
AE_system=(T2-T0)*dS_system; //Available energy with the system
dAE=AE_source - AE_system; //Decrease in available energy
disp("dAE=")
disp(dAE)
disp("kJ")