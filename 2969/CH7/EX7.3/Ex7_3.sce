clc
clear
//DATA GIVEN
Db=0.6;                       //diameter of brake wheel in m
d=0.026;                      //diameter of rope in m
W=200;                        //dead load on the brake in N
S=30;                         //spring balance reading in N
N=450;                        //engine speed in R.P.M.

//Brake Power, B.P.=(W-S)(pi)(Db+d)N/(60*1000) kW
BP=(W-S)*(%pi)*(Db+d)*N/(60*1000);

printf('The Brake Power, B.P. is: %2.1f kW.\n',BP);
