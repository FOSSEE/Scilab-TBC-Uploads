//Caption:Find (a)% resistance (b)Regulation for power factors- unity, 0.8 lagging and 0.8 leading
//Exa:2_3
clc;
clear;
close;
L_o=1//Ohmic loss(%)
X=6//Reactance(in %)
pf_1=0.8//lagging power factor
pf_2=0.8//leading power factor
R=L_o
disp(R,'(a)% resistance(in %)=')
Re_1=L_o
disp(Re_1,'(b)Regulation at unity power factor(in%)=')
theta=(acosd(pf_1))
a=sind(theta)
Re_2=L_o*pf_1+X*a
disp(Re_2,'Regulation at 0.8 lagging power factor(in%)=')
Re_3=L_o*pf_2-X*a
disp(Re_3,'Regulation at leading power factor(in%)=')