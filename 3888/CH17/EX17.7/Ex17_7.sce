//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 17.7
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


Vs=220;                                           //Supply voltage in Volt
r=1;                                              //Resistance in Ohm/km
D_aC=5;                                           //Voltage drop in section aC in Volt
D_C1E1=1;                                         //Voltage drop in section C1E1 in Volt
D_PE1=0.5;                                        //Voltage drop in section pE1 in Volt
D_CB=3;                                           //Voltage drop in section CB in Volt
D_B1D1=1;                                         //Voltage drop in section B1D1 in Volt
D_D1C1=0;                                         //Voltage drop in section D1C1 in Volt
D_Eb=3;                                           //Voltage drop in section Eb in Volt
D_BA=1.5;                                         //Voltage drop in section BA in Volt
D_A1D=2;                                          //Voltage drop in section A1D in Volt
D_DE=3;                                           //Voltage drop in section DE in Volt
CC1=Vs-D_aC-D_C1E1+D_PE1;                         //Voltage across section CC1 in Volt
BB1=CC1-D_CB-D_B1D1-D_D1C1;                       //Voltage across section BB1 in Volt
E1E=Vs-D_PE1-D_Eb;                                //Voltage across section E1E in Volt
D1D=E1E+D_C1E1+D_D1C1-D_DE;                       //Voltage across section D1D in Volt
AA1=2*Vs-D_aC-D_CB-D_BA-D_A1D-D_DE-D_Eb;          //Voltage across section AA1 in Volt

printf("\nThe voltage across load points are %.1f volt and %.1f volt and %.1f volt and %.1f volt and %.1f volt",CC1,BB1,E1E,D1D,AA1);
