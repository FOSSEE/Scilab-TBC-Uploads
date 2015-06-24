//Caption:Find effective inductance when connected in (a)parallel aiding (b) parallel opposing
//Exa: 2.12
clc;
clear;
close;
L1=1.6;//self inductance of coil 1 (in Henry)
L2=0.1;//self inductance of coil 2 (in Henry)
M=0.34;//mutual inductance (in Henry)
//Refer to eqn-2.45
L_aid=((L1*L2)-M^2)*10^3/(L1+L2-(2*M));//in mili-Henry
disp(L_aid,'effective inductance in parallel aiding  (in mili-Henry)=')
//Refer to eqn-2.46
L_opp=((L1*L2)-M^2)*10^3/(L1+L2+(2*M));//in mili-henry
disp(L_opp,'effective inductance in parallel opposing  (in mini-Henry)=')