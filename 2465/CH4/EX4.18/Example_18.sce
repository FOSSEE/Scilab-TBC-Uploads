//Chapter-4,Example 18,Page 97
clc();
close();

T1= 300   //temperature in Kelvin

T2= 363   //temperature in Kelvin

P1= 1   //pressure in atm

P2=7    //pressure in atm

Cv=5

R=2    //gas constant

Cp=Cv+R

delta_S= Cp*log(T2/T1)+R*log(P1/P2)  //entropy change

printf('the entropy change is %.4f cal/deg ', delta_S)
