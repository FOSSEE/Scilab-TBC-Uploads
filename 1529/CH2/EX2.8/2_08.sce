//Chapter 2, Problem 8, Figure 2.8
clc;
V1=20;                      //Voltage of resistor A
I1=20*10^-3;                //Current of resistor A
V2=16;                      //Voltage of resistor B
I2=5*10^-3;                 //Current of resistor B
R1=V1/I1;                   //Calculating resistance of resistor A using Ohms law
R2=V2/I2;                   //Calculating resistance of resistor B using Ohms law
printf("Resistance of resistor A = %d k.ohms\n\n\n",R1/1000);
printf("Resistance of resistor B = %f k.ohms\n\n\n",R2/1000);
