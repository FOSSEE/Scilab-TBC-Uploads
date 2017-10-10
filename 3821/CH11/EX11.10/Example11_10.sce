///Chapter No 11 Steam Boilers
////Example 11.10 Page No 242
//Find Draught produce in terms of water
//Input data
clc;
clear;
ma=18;            //Boileruses of per Kg of fuel in Kg/Kg
hw=25*10^-3;     //Chimney height to produce draught in mm
Tg=315+273;       //Temperature of chimney gases in degree celsius 
Ta=27+273;       //Out side air temp in degree celsius

//Calculation
//Draught produce in terms of water column in m
H=(hw/(353*(1/Ta-1/Tg*((ma+1)/ma))))*1000;

//Output
printf('Draught produce in terms of water column=%f m \n',H);
