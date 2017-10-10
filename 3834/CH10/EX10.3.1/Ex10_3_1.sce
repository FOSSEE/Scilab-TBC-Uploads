//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 10.3.1
//windows 7
//Scilab version-6.0.0
clc;
clear;
//given
Ith1=40//threshold current in mA at 25 degree centigrade
Ith2=66//threshold current in mA at 25 degree centigrade
T1=25;//temperature  in degree centigrade for calculation of threshold current
T2=65//temperature  in degree centigrade for calculation of threshold current
delta=2.5//threshold current change with temperature in percent per degree centigrade
Io=Ith1/(1+(delta/100)*T1);//characteristic current in mA at 0
x=log(Ith1/Io)//constant
To=T1/x//characteristic temperature degree centigrade
mprintf("Io =%0.0f mA ",Io)
mprintf("\nTo =%0.0f degree Centigrade",To)//answer vary due to rounding
