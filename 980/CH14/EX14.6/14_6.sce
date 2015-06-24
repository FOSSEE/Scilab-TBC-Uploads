clc;
clear;
format('v',11);
BWFN=10;
del_phi_fn=BWFN/2*%pi/180;                      //in radian.
phi_0=45;
kd=%pi;
N=2*%pi/(kd*(sind(phi_0)*del_phi_fn+cosd(phi_0)*del_phi_fn^2/2));
disp(N,"no of elements=");
