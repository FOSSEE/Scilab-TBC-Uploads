//===========================================================================
//chapter 8 example 11

clc;clear all;

 //variable declaration
V   = 230;           //voltage in volts
I   = 4;           //current in A
I1   = 5;           //current in A
cosphi   = 1;      //power factor 
h        = 6;       //hours
R        = 2208;    //revolutios made by meter
R1        = 1472;    //revolutios made by meter 
E1       = 400;      //energy consumption 
h1        =4;

//calculations
E    = (V*I*cosphi*h)/(1000);     //energy consumption in kWh
M     = R/(E);                   //meter constant in rev/kWh
cosphi2    = (R1/(E1)*(1000/(V*I1*h1)));    //power factor of the load is cosphi2 for second measuremnet
              
//result
mprintf("meter constant = %3.2f revolutions/kWhr",M);
mprintf("\npower factor of the load is cosphi2 for second measuremnet = %3.2f",cosphi2);

