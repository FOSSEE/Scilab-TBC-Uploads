//calculating required data//
//example 19//
clc
//clears the command window//;
clear
//clears//
E=10;//change in input voltage//
n=8;//no. of bits//
R=E/((2^n)-1);//resolution//
disp('resolution:')
disp(R);//displaying result//
R1=(1/((2^n)-1))*100;//percentage resolution//
disp('percentage resolution:')
disp(R1);//displaying result//
