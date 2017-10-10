////Chapter No 14 Air Standard Cycles
////Example No 14.8 Page No 309
///Find Max temp of cycle
//Input data
clc;
clear;
P1=0.1*10^6;                 //Otto cycle air
T1=35+273;                    //Otto cycle temp degree celsius
r=9;                          //Compression ratio
Qs=1800;                      //Supplied heat in kJ/kg
v1=9;                                                 
v2=1;
R=0.287*10^3;
gamma1=1.4;
Cv=0.718;

//Calculation
T2=(T1*((v1/v2)^(gamma1-1))); //Temperature at point 2 in K
P2=(P1*((v1/v2)^1.4))*10^-6;  //pressure at point 2 in MPa 
T3=((Qs/Cv)+(T2));            //Max temp of cycle in degree celsius
P3=(T3/T2*P2);                //Max pressure of cycle in MPa
eta=100*(1-(1/(r^(gamma1-1))));//Otto cycle thermal efficiency in %
WD=(Qs*eta)*10^-2;           //Work done during the cycle in KJ/Kg
v1=((R*T1)/P1);               //Char gass equation in m^3/Kg
v2=v1/r;                      //Char gass equation in m^3/Kg
Sv=v1-v2;                     //Swept volume in m^3/Kg
Pme=(WD/Sv)*10^-3;           //Mean effective pressure in MPa
alpha=P3/P2;                  //Explosion ratio
Pm=(((P1*r)/((r-1)*(gamma1-1)))*(((r^(gamma1-1))-1)*(alpha-1)))*10^-6;//Mean effective pressure in MPa


//Output
printf('Temperature at point= %f K \n',T2);
printf('pressure at point= %f MPa \n',P2);
printf('Max temp of cycle=  %f K \n',T3);
printf('Max pressure= %f MPa \n',P3);
printf('Otto cycle thermal efficiency= %f percent \n',eta);
printf('Work done during the cycle= %f KJ/Kg \n',WD);
printf('Char gass equation= %f m^3/Kg \n',v1);
printf('Char gass equation=  %f m^3/Kg \n',v2);
printf('Swept volume=  %f m^3/Kg \n',Sv);
printf('Mean effective pressure= %f MPa \n',Pme);
printf('Explosion ratio= %f \n',alpha);
printf('Mean effective pressure= %f MPa \n',Pm);
