//calculating required data//
//example 5//
clc
//clears the command window//;
clear
//clears// 
LSB1=10;//change in output voltage due to LSB//
LSB2=2*LSB1;//change in output voltage due to second LSB//
LSB3=4*LSB1;//change in output voltage due to third LSB//
LSB4=8*LSB1;//change in output voltage due to fourth LSB//
LSB5=16*LSB1;//change in output voltage due to fifth LSB//
Vmax=LSB1+LSB2+LSB3+LSB4+LSB5;//maximum full scale output which occurs at input 11111//
//all the voltage units are in mV//
printf('maximum full scale output in mV at 1111=%d volt\n',Vmax);//displaying the result//
R=10;//resolution in mV since smallest increment due to change in LSB is 10mV//
printf('resolution=%d volt\n',R);//diaplaying the result//
S=10;//step size=resolution//
R1=S/Vmax*100;//percentage resolution//
printf('percentage resolution=%f percent',R1);//displaying the result//

