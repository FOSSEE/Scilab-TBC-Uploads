clear;
clc;
//Example 10.4
Iref=1;
Io=12*10^-3;
V1=5;
V2=-5;
Vt=0.026;
Vbe=0.7;
R1=(V1-Vbe-V2)/Iref;
printf('\nResistance R1 =%.2fKOhm\n',R1)
Re=(Vt/Io)*log(Iref/Io);
printf('\nResistance Re =%.2fKOhm\n',Re)
Vbe=Io*Re;
printf('\ndifference between two B-E voltages=%.2f V\n',Vbe)
