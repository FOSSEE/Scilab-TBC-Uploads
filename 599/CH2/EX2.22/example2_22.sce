
clear;
clc;
printf("\t Example 2.22\n");
                    //variation in liquid level with respect to time is given below

t=[26 185 456 1336 1958 2810 3829 4822 6385]
// let Zt-Zo= x;
x=[.25 1.29 2.32 4.39 5.47 6.70 7.38 9.03 10.48]
i=1;                //looping starts
while(i<10)
    y(i)=t(i)/x(i);                //for calculating the t/Zt-Zo value
i=i+1;
end
plot(x,y,"o-");
xtitle(" Fig.2.2 Example 22 ","X--(zi-zo),cm  --->","Y-- vs (t/(zi-zo))min/cm ---->");
slope=51.4385*60 *10^4;             //slope of the curve in 1/sec*m^2
//slope = Cal *(xblm)/(2*Dab*C*(xa1-xa2))
d=1540;                       //density in kg/m^3
Ml=154;                       //molecular weight of toluene
Cal=d/Ml ;                    //conc. at length at disxtance l in mol/m^3

T=(321);                     //temperature  in kelvin
pt=1;                       //total pressure in atm
R=82.06;                    //universal gas constant
C=pt/(R*T) *10^3;                //total conc. in kg mol/m^3

pa=(282/760);              //vapour pressure of toluene 
xa1=pa/pt;                 //mole fraction of toluene at pt1 i.e before evaporation
xb1=1-xa1;                //mole fraction of air before evaporation i.e at pt1 
xb2=1;                    //mole fraction of air after evaporation i.e at pt.2
xa2=0;                    //mole fraction of toluene at point 2
xblm=(xb2-xb1)/(log(xb2/xb1));//log mean temp. difference
Dab = Cal *(xblm)/(2*slope*C*(xa1-xa2));    //diffusivity coefficient
printf("\n the diffusivity of the mixture by winklemann method  of toluene in air is :%f*10^-6 m^2/s",Dab/10^-6);
//end