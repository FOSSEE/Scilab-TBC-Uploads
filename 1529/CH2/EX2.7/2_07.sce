//Chapter 2, Problem 7
clc;
V=120;                  //Supply voltage
I1=50*10^-3;                    //Current of 50mA
I2=200*10^-6;                   //Current of 200uA
R1=V/I1;                            //Calculating resistance due to I1 using Ohms law
R2=V/I2;                            //Calculating resistance due to I1 using Ohms law
printf("Resistance of coil draws 50mA current = %f ohms\n\n\n",R1);
printf("Resistance of coil draws 100uA current = %f ohms\n\n\n",R2);
