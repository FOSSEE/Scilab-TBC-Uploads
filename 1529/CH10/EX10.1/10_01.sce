//Chapter 10, Problem 1, figure 10.5
clc;
Ia=40*10^-3;                //maximum permissible current 
I=50;                       //total circuit current
ra=25;                      //resistance of instrument
Is=I-Ia;                    //current flowing in shunt
V=Ia*ra;                    //voltage
Rs=V/Is;                    //resistance in shunt
printf("Shunt resistance Rs = %f miliohm\n\n\n",Rs*1000);
printf("A resistance of value 20.02 miliohm needs to be connected in parallel with the instrument.")
