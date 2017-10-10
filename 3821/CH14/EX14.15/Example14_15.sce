////Chapter No 14 Air Standard Cycles
////Example No 14.15 Page No 317 
///Find maximum temperatureof the cycle
//Input data
clc;
clear;
P1=0.1;            //Diesel cycle is supplied# with air in MPa
T1=40+273;         //Diesel cycle is supplied with temperature in degree celsius 
r=18;              //Compression ratio
Qs=1500;           //Heat supplied
v1=18;
v2=1;
Cp=1.005;
gamma1=1.4;


//Calculation
T2=T1*((v1/v2)^(gamma1-1)); //For isentropic process the temperature is
P2=P1*((v1/v2)^(gamma1));   //For isentropic process the pressure is
T3=(Qs/Cp)+T2;              //Maximum temperatureof the cycle
rho=T3/T2;                  //Cut-off ratio
//Air standard efficiency
eta=(1-(1/r^(gamma1-1))*((1/gamma1)*(((rho^(gamma1))-1)/(rho-1))))*100;
NWD=(Qs*eta)*10^-2;                  //Net work done

//Output
printf('for isentropic process the temperature= %f K \n',T2);
printf('for isentropic process the pressure= %f MPa \n',P2);
printf('maximum temperatureof the cycle=  %f K \n ',T3);
printf('cut-off ratio= %f MPa \n',rho);
printf('air standard efficiency= %f percent \n',eta);
printf('net work done= %f KJ/Kg \n',NWD);
