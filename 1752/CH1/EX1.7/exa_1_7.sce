//Exa 1.7
clc;
clear;
close
// given data
T1=1350;// in degree C
T2=50;// in degree C
L=25*10^-2;//in meter
// Formula q= -k*A*dT/dx
// or q/A= -k*dT/dx
// let q/A = q_by_A
q_by_A=(integrate('-0.838*(1+0.0007*T)','T',T1,T2))/(integrate('1','x',0,L));
disp(q_by_A,"Heat transfer rate per square meter through  the cylinder in watt is : ");

// Note : Answer in the book is wrong

