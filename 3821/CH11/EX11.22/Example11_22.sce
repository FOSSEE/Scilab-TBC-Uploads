///Chapter No 11 Steam Boilers
////Example 11.22 Page No 256
///Find Efficeincy of chimney draught
///Input data
clc;
clear;
H=45;          //Chimney height in m
Tg=370+273;    //Temperature of flue gases in degree celsius
T1=150+273;    //Temperature of flue gases in degree celsius
ma=25;         //Mass of the flue gas formed in Kg/kg of a cosl fired
Ta=35+273;     //The boiler temperature in degree celsius
Cp=1.004;      //fuel gas

//Calculation
//Efficeincy of chimney draught in %
A=(H*(((Tg/Ta)*(ma/(ma+1)))-1))/(Cp*(Tg-T1))*100;

//Output
printf('Efficeincy of chimney draught= %f percent \n',A);
