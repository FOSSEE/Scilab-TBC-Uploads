//=============================================================================================
//chapter 1 example 5

clc;
clear all;

//variable declaration
R0      = 100;                   //resistance in  Ω
R100    = 138.50;                 //resistance in  Ω
R200    = 175.83;                //resistance in  Ω
T1      = 0;                     //Tempperature in  °C
T2      = 200;                   //Tempperature in  °C
T3      = 100;                   //Tempperature in  °C

//calculations
T       = ((T2-T1)/(R200-R0))*(R100-R0);  //change in temperatre in °C
D       = T-T3;                              //deviation in °C at T3 temperature
p       = (D/(T2))*100;                  //per cent full scale deflection non linearity in %

//result
mprintf("per cent full scale deflection %3.4f  percent",p);


//=======================================================================================================
