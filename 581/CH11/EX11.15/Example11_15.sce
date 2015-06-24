
clear ;
clc;

printf("\t Example 11.15\n");
T1=1473;          //suraface temp.of hot water,K
x=0.05;        //mass fraction of water
Gm=0.017;       //average mass  transfer coefficient,kg/(m^2*s)
A=0.04;        //suraface area of pan,m^2

//only water vapour passes through the liquid surface, since air is not strongly absorbed into water under normal conditions.

p=38.58*1000;       // saturation pressure of water,kPa
Xwater=p/101325;    //mole fraction of saturated water
Mwater=Xwater*18.02/(Xwater*18.02+(1-Xwater)*28.96);    //mass fraction of saturated water

B=(x-Mwater)/(Mwater-1);    //mass transfer driving force
m=Gm*B*A;            //evaporation rate,kg/s
printf("\t evaporation rate is:%f kg/s or 769 g/hr.",m);
//end