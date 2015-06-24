
clear;
clc;
printf("\t Example 6.15\n");

t1=20;                   //ambient air temperature 
t2=70;                   //exhaust air temperature 
r1=150;                  //evaporation of water 
r2=.25;                 //outlet solid moisture content
t3=15;                //inlet solid temperature
t4=65;                  //outlet solid temperature
p=5;                   //power demand in KW
h=18;                  //heat loss in kj

h1=1;                    //mean specific heat of dry air in kj/kg*K
h2=1.25;                    //mean specific heat of dry material in kj/kg*K
h3=4.18;                    //mean specific heat of moisture in kj/kg*K
e=2626;                    //enthalpy of saturated water vapour in kj/kg

            //basis is 1hr
a1=r1*h3*(t4-t3);          //heat required for heating 150 kg of water from 15 to 65
a2=r1*e;                   //heat required for 150 kg water evaporation
a3=2000*h1*(t2-t1);        //heat required for heating air from 20 to 70 
a4=r2*h3*(t4-t3);          //heat required for heating moisture from 15 to 65
a5=120*h2*(t4-t3);         //heat required for heating dry solid from 15 to 65
hlost=h*3600;             //heat lost in kj
total=(a2+a3+a4+a5+hlost)/3600;    //total heat lost 
printf("\n :%f  kW of heat required for 2000kg/hr of dry air",total);
ans1=a2+a1;            //heat needed for evaporation 
printf("\n heat needed fro evaporation is :%f",ans1/3600);
ans2=(ans1/3600)/total;    //fraction of this heat needed for evaporation
printf("\n fraction of this heat needed for evaporation:%f",ans2);
 

//end