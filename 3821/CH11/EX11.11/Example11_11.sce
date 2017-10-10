///Chapter No 11 Steam Boilers
////Example 11.11 Page No 242
///Find Draught produce in terms of hot gas 
//Input data
clc;
clear;
H=40;                             //High discharge in m
ma=19;                            //Fuel gases per Kg of fuel burnt
Tg=220+273;                       //Average temp of fuel gases in degree celsius
Ta=25+273;                        //Ambient temperature in degreee celsius


//Calculation
hw=353*H*(1/Ta-1/Tg*((ma+1)/ma)); //Draught produce in terms of water column in mm
H1=H*((Tg/Ta)*(ma/(ma+1))-1);     //Draught produce in terms of hot gas column in m

//Output
printf('Draught produce in terms of water column=%f mm \n',hw);
printf('Draught produce in terms of hot gas column=%f m \n',H1);
