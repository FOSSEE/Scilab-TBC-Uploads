clc
clear
//DATA GIVEN
V=0.15;                        //volume of wet steam in m^3
p=4;                           //pressure of wet steam in bar
x=0.8;                         //dryness fraction

//At 4 bar, from steam tables
vg=0.462;                      //m^3/kg
hf=604.7;                      //kJ/kg
hfg=2133;                      //kJ/kg

rho=1/(x*vg);                  //density in kg/m^3
m=rho*V;                       //mass of 0.15 m^3 of steam

Htotal=(rho*1)*(hf+x*hfg);     //total heat of 1 m^3 of steam which has a mass of rho(2.7056) kg

printf('(i)The Mass of 0.15 m^3 of steam is: %1.4f kg. \n',m);
printf('(ii)The Total heat of 1 m^3 of steam which has a mass of 2.7056 kg is: %4.2f kJ. \n',Htotal);
