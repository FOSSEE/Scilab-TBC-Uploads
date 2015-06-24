clc;
clear all;
X=2*1e-3;//magnetic suseptibility of material at room temp.
H=1e3;//magnetic field intrnsity of piece of ferricoxide
u0=4*%pi*1e-7;
M=X*H;//magnetization
disp('A/m',M,'magnetization is=');
ur=X+1;//relative permiability
B=u0*ur*H;//magnetic flux density
disp('W/m^2',B,'magnetic flux density is=');
