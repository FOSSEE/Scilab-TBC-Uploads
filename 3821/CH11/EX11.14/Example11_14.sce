///Chapter No 11 Steam Boilers
////Example 11.14 Page No 245
///Find Theoretical draught in millimeters of water
//Input data
clc;
clear;
H=24;            //Chimney height in m
Ta=25+273;       //Ambient temperature in degree celsius
Tg=300+273;      //Temperature of fuel gases in degree celsius
ma=20;           //Combustion space of fuel burnt in Kg/Kgof fuel
g=9.81; 


//Calculation
hw=((353*H)*((1/Ta)-((1/Tg)*((ma+1)/ma))));//Theoretical draught in millimeters of water in mm
H1=H*((Tg/Ta)*(ma/(ma+1))-1);              //Theoretical draught produced in hot gas column in m
H2=H1-9.975;                               //Draught lost in friction at the grate and passage in m
V=round(sqrt(2*g*H2));                       //Actual draught produced in hot gas column in m

///Output
printf('Theoretical draught in millimeters of water= %f mm \n',hw);
printf('Theoretical draught produced in hot gas column=%f m \n',H1);
printf('Draught lost in friction at the grate and passage=%f m \n',H2);
printf('Actual draught produced in hot gas column= %f m \n ',V);
