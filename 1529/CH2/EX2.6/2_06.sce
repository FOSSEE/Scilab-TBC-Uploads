//Chapter 2, Problem 6
clc;
V1=100;                 //Battery voltage
I1=5*10^-3;                 //Current of 5mA;
V2=25;                      //Voltage is now reduced to 25V
R=V1/I1;                    //Calculating resistance due to V1 using Ohms law
I2=V2/R;                    //Calculating current due to V2 using Ohms law
printf("Resistance of resistor = %d k.ohms\n\n\n",R/1000);
printf("Current when voltage is reduced to 25V = %f mA",I2*1000);
