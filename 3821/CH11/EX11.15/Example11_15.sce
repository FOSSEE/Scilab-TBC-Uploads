///Chapter No 11 Steam Boilers
////Example 11.15 Page No 246
////Find Draught lost in friction at the grate and pasage
//Input data
clc;
clear;
H=38;                          //Stack height in m
d=1.8;                         //Stack diameter discharge in m
ma=17;                         //Fuel gases per Kg of fuel burnt Kg/Kg
Tg=277+273;                    //Average temperature of fuel gases in degree celsius
Ta=27+273;                     //Temperature of outside air in degree celsius
h1=0.4;                        //Theoretical draught is lost in friction in 
g=9.81;
pi=3.142;

//Calculation
H1=H*(((Tg/Ta)*(ma/(ma+1))-1)); //Theoretical draught produce in hot gas column in m
gp=0.45*27.8;                  //Draught lost in friction at the grate and pasage in m
C=H1-gp;                       //Actual draught produce in hot gas column in m
V=sqrt(2*9.81*C);             //Velocity of the flue gases in the chimney in m/s
rhog=((353*(ma+1))/(ma*Tg));   //Density of flue gases in Kg/m^3
mg=round(rhog*((pi/4)*(d**(2))*V)); //Mass of gas flowing through the chimney in Kg/s


///Output
printf('Theoretical draught produce in hot gas column=%f m \n',H1);
printf('Draught lost in friction at the grate and pasage=%f m \n',gp);
printf('Actual draught produce in hot gas column=%f m \n ',C);
printf('Velocity of the flue gases in the chimney =%f m/s \n',V);
printf('Density of flue gases=%f Kg/m^3 \n',rhog);
printf('Mass of gas flowing through the chimney=%f Kg/s \n',mg);

