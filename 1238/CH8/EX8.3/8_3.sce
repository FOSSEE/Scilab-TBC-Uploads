//claculating the required data//
//example 2//
clc
//clears the command window//
clear
//clears// 
disp('the full scale maximum voltage occurs when all input are at high level 1')
Vm=10;//full scale maximum output voltage//
printf('full scale maximum output voltage=%d volt\n',Vm);//result is displayed//
n=5
LSB=1/((2^n)-1);//weight of LSB//
V1=10*LSB;//change in output voltage due to LSB//
printf('change in output voltage due to change in lsb=%f volt\n',V1)
disp('analog output voltage for 11001 is given by Vo=(10/R+80/R+160/R)/(1/R+2/R+4/R+8/R+16/R)')
Vo=250/31;
printf('analog output voltage for input 11001=%f volt\n',Vo)
