//Exa 5.11
clc;
clear;
close;
format('v',8);

//Given Data :
T1=1200;//Kelvin
T2=400;//Kelvin
T0=300;//Kelvin
Qsource=-150;//KJ/s
Qsystem=150;//KJ/s
deltaS_source=Qsource/T1;//KJ/sK
deltaS_system=Qsystem/T2;//KJ/sK
deltaS_net=deltaS_source+deltaS_system;//KJ/sK
disp(deltaS_net,"Net change in entropy in KJ/sK : ");
A1=(T1-T0)*-deltaS_source;//KJ/s
disp(A1,"Available energy of heat source in KJ/s : ");
A2=(T2-T0)*deltaS_system;//KJ/s
disp(A2,"Available energy of system in KJ/s : ");
E_decrease=A1-A2;//KJ/s
disp(E_decrease,"Decrease in available energy in KJ/s : ");
