//Chapter 19, Problem 8, Fig.19.12
clc;
R1=10e3;                                    //resistance 1
R2=20e3;                                //resistance 2
R3=30e3;                                //resistance 3
V1=0.5;                                 //input voltage 1
V2=0.8;                                  //input voltage 2
V3=1.2;                                     //input voltage 3
Rf=50e3;                                    //feedback resistance
V0=-Rf*((V1/R1)+(V2/R2)+(V3/R3));           //output voltage
printf("Output voltage = %f V",V0);
