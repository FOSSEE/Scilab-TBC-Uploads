//==========================================================================
// chapter 6 example 3

clc;
clear;

//input data
 t1         = 20;                // temperature in °C
 alpha      = 5*10^-3;          //average  temperature coefficient at 20°C 
 R1         = 8;               //resistance in ohm
 R2         = 140;            //resistaance in ohm
 
 
//calculation
 t2     = t1+((R2-R1)/(R1*alpha));       //temperature in C
 
//result
 mprintf('Hence temperature under normal condition is %3.2f°C\n',t2);

//============================================================================
