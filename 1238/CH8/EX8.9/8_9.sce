//calculating required data//
//example 9//
clc
//clears the command window//;
clear
//clears// 
N=2^10-1;//no. of steps//
Vmax=10*10^-3*N;//maximum full scale output//
R=(10*10^-3)/Vmax*100;//percentage resolution//
printf('maximum full scale output=%f ampere\n',Vmax)
printf('percentage resolution=%f percent',R)

