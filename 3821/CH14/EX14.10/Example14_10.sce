////Chapter No 14 Air Standard Cycles
////Example No 14.10 Page No 312 
///Find Middle temperature
//Input data
clc;
clear;
T1=300;                            //Initial temp in K
T3=2500;                           //Final temp in K
P1=1;                              //Initial pressure in N/m^2
P3=50;                             //Final pressure in N/m^2
gamma1=1.4;
Cv=0.718;

//Calculation
r=(P3*T1)/(P1*T3);                    //Compression ratio
eta=(1-(1/r^(gamma1-1)));             //Standard effeciency in %
T2=T1*((P3/P1)^((gamma1-1)/gamma1));  //Middle temperature in K
Qs=Cv*(T3-T2);                        //Heat supplied in KJ/Kg
WD=eta*Qs;                            //Work done KJ/Kg

//Output
printf('Compression ratio= %f \n',r);
printf('Standard effeciency= %f percent \n',eta);
printf('Middle temperature= %f K \n',T2);
printf('Heat supplied= %f KJ/Kg \n',Qs);
printf('Work done= %f KJ/Kg \n',WD);
