//Example 7.5.7: deflection
clc;
clear;
close;
//given data :
format('v',6)
R_ab=100;// in ohm
R_bc=500;// in ohm
R_cd=1000;// in ohm
R_da=200;// in ohm
V=10;
VRg=200;// in ohm
del_CD=10;// in ohm
V_bd=V*((R_ab/(R_ab+R_bc))-(R_da/(R_da+R_cd+del_CD)));
R_bd=(((R_ab*R_bc)/(R_ab+R_bc))+((VRg*(R_cd+del_CD))/(VRg+R_cd+del_CD)));
I_G=(V_bd/(R_bd+VRg));
s=5;//sensivity in micro ampere /mm
dg=I_G*10^6*s;//deflection in mm
disp(dg,"deflection in mm")
//answer is wrong in the textbook
