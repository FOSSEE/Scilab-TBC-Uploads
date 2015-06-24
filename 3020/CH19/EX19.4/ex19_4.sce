clc;
clear all;
Tc1=4.185;//critical temperature of metal
Tc2=4.133;//decreased critical temperature
M1=199.5;//isotropic mass of metal
//Tc2=Tc1*(M1/M2)^0.5 so..
M2=M1*(Tc1/Tc2)^2;//isotropic mass when Tc2=4.133K
disp('',M2,'isotropic mass when Tc2=4.133K is');
//in the book the question is different and solution is somewhat different.. so.. slight variation in the answer.. checked in calculator also..

