clc;
clear all;
er=1.0000684;//dielectric constant of helium 
N=2.7*1e25;//atoms/m^3
r=(er-1)/(4*%pi*N);
R=r^(1/3); //radius of electron cloud
disp('m',R,'radius of electron cloud is');
//slight variation in ans than book.. checked in calculator also
