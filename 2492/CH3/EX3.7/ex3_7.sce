// Exa 3.7
format('v',6)
clc;
clear;
close;
// Given data
Vm = 20;// in V
Idc = 100;// in mA
Idc = Idc * 10^-3;// in A
R_S = 5;// in ohm
R_F = 2;// in ohm
Vdc = ((2*sqrt(2)*Vm)/%pi) - Idc*(R_S+2*R_F);// in V
disp(Vdc,"The output dc voltage at dc load current of 100 mA in V is");
Idc = 200;// in mA
Idc = Idc * 10^-3;// in A
Vdc = ((2*sqrt(2)*Vm)/%pi) - Idc*(R_S+2*R_F);// in V
R_L = Vdc/Idc;// in ohm
// The percentage regulaiton
Per_reg = ((2*R_F+R_S)/R_L)*100;// in %
disp(Per_reg,"The percentage regulation for a full load dc current of 200 mA in % is");
Eta = round((8/(%pi^2)) * ( R_L/(2*R_F+R_S+R_L) )*100);// in %
disp(Eta,"The efficiency of the rectifier in % is");
