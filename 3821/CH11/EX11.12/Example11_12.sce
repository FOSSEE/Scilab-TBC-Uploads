///Chapter No 11 Steam Boilers
////Example 11.12 Page No 243
///Find Mean temperature of fuel gases
//Input data
clc;
clear;
H=27;                                //Chimney height in m
hw=15;                              //Draught produces of water column in mm
ma=21;                               //Gases formed per Kg of fuel burnt in Kg/Kg
Ta=25+273;                           //Temperature of the ambient air in degree celsius


//Calculation
Tg=-(((ma+1)/ma)/((hw/(353*H))-(1/Ta))) //Mean temperature of fuel gases in K

//Output
printf('Mean temperature of fuel gases= %f K \n',Tg);

