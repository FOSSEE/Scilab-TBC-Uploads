
clear;
clc;
printf("\t Example 2.19\n");
                    //stefan tube experiment

Ml=92;                        //molecular weight of toluene
T=(312.4);                    //temperature  in kelvin
pt=1*1.013*10^5;              //total pressure in pascal
R=8314;                       //universal gas constant
t=275*3600;                   //after 275 hours the level dropped to 80mm from the top
zo=20*10^-3;                 //intially liquid toluene is at 20mm from top
zt=80*10^-3;                 //finally liquid toluene is at 80mm from top
    //air is assumed to be satgnant 
d=850;                     //density in kg/m^3
pa=7.64*10^3;              //vapour pressure of toluene in at 39.4degree celcius 
cal=d/Ml;                  //conc. at length at disxtance l
ca=pt/(R*T);               //total conc. 
xa1=pa/pt;                //mole fraction of toluene at pt1 i.e before evaporation 
xb1=1-xa1;                //mole fraction of air before evaporation i.e at pt1 
xb2=1;                    //mole fraction of air after evaporation i.e at pt.2
xa2=0;                    //mole fraction of toluene at point 2
xbm=(xb2-xb1)/(log(xb2/xb1));
        //t/(zt-zt0) = (xbm*cal*(zt+zo))/(2*c*(xa1-xa2)*t);
Dab=(xbm*cal*(zt^2-zo^2))/(2*ca*t*(xa1-xa2));
printf("\n the diffusivity of the mixture in stefan tube of toluene in air is :%f*10^-5 m^2/s",Dab/10^-5);
//end