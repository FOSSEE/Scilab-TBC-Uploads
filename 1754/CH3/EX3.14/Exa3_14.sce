//Exa 3.14
clc;
clear;
close;
//Given data : 
//Part (i) : without heat sink
ThetaMax=90;//in degree C
Theta_o=30;//in degree C
R=300;//in degree C/W
Pr=(ThetaMax-Theta_o)/R;//in watt
disp(Pr,"Without heat sink, Maximum permissible power dissipatio in watt :");
//Part (ii) : with heat sink
ThetaMax=90;//in degree C
Theta_o=30;//in degree C
R=60;//in degree C/W
Pr=(ThetaMax-Theta_o)/R;//in watt
disp(Pr,"With heat sink, Maximum permissible power dissipatio in watt :");