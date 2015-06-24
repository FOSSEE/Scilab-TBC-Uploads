// Caption: Finding short circuit current
clear;
close;
clc;
X=.060+2.5-(2.5^2/(.06+2.5));//transient reactance
I=300*10^3/(.9*.93*440*sqrt(3));//prefault stator current
I_initial=232/.12;//initial current
T_o=(2.5+.06)/(2*%pi*60*.0064);//open circuit time constant
T_s=T_o*.12/2.56;//short circuit time constant
