//====================================================================================
// chapter 6 example 2

clc;
clear;

//input data
 R1     = 50;          //resistance in ohm at temperature  15°C
 R2     = 60;          // resistance in ohm temperature  15°C
 t1     = 15;          //temperature in °C
 alpha  = 0.00425;     //temperature coefficient of resistance


//formula
//Rt = R0*(1+(alpha*t))
//Rt1/Rt2 = R0*(1+(alpha*t1))/R0*(1+(alpha*t2))
//calculation
 R          = R2/R1;
 X          = 1+(alpha*t1);
 t2         = ((R*X)-1)/alpha;
 
 

//result
 mprintf('temperature coefficient of resistance =%3.2f°C\n',t2);

//=====================================================================================
