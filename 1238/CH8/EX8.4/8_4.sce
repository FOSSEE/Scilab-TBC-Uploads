//calculating required data//
//example 4//
clc
//clears the command window//
clear
//clears// 
a=bin2dec('10010')
Vo=9*10^-3;//output voltage//
k=Vo/a;//proportionality factor//
b=bin2dec('11011')
Vo1=k*b;//analog output voltage//
printf('analog output voltage=%f volt\n',Vo1);
//maximum 5 bit digital input is 11111 i.e. 31 in decimal//
Vm=k*31;//maximum full scale output voltage//
printf('maximum full scale output voltage=%f volt',Vm);

