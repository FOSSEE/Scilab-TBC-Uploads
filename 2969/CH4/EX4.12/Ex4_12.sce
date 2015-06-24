clc
clear
//DATA GIVEN
p=10;                          //pressure of steam, p1=p2 in bar
x1=0.85;                       //dryness fraction
V1=0.15;                       //volume of steam in m^3
Tsup2=300+273;                 //temp. of steam in K
Cps=2.2;                       //specific heat of steam in kJ/kgK

//At 10 bar, from steam tables
vg1=0.194;                          //m^3/kg
hfg1=2013.6;                        //kJ/kg
Ts1=179.9+273;                      //in K
m=V1/(x1*vg1);                      //mass of steam in kg
hnet=(1-x1)*hfg1+Cps*(Tsup2-Ts1);   //heat supplied per kg of steam
Htotal=m*hnet;                      //total heat supplied

//External work done during the process We=p*(vsup2-x*vg1)
//since p1=p2=p, 
//vg1/Ts1=vsup2/Tsup2
vsup2=vg1*Tsup2/Ts1;
We=p*10^5*(vsup2-x1*vg1)*10^-3;
hp=We/hnet;                         //% of total heat supplied (per kg) which appears as external work

printf(' (i) The Total heat supplied is: %3.1f kJ. \n',Htotal);
printf(' (ii) The Percentage of total heat supplied (per kg) which appears as external work is: %2.1f percent. \n',(hp*100));
