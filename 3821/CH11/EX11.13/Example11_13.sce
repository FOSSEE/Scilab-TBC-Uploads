///Chapter No 11 Steam Boilers
////Example 11.13 Page No 244
//Find Air-fuel ratio
//Input data
clc;
clear;
hw=20;                   //Static draught of water in mm
H=50;                    //Chimney height in m
Tg=212+273;              //Temperature of the fuel degree celsius
Ta=27+273;               //Atmospheric air in degree celsius

//Calculation
ma=(-((hw/(353*H))-Ta*Tg))*10^-4   //Air-fuel ratio in Kg/Kg of fuel burnt-3

//Output
printf('Air-fuel ratio=  %f Kg/Kg of fuel burnt \n',ma);
