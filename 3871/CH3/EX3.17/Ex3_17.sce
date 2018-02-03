//===========================================================================
//chapter 3 example 17
clc;
clear all;

//variable declaration
R1     = 500;       //resistance in Ω
R2     = 615;       //resistance in Ω
R3     = 100;       //resistance in Ω
dR1    = 1;         //limiting error(dR1/R1) in %
dR2    = 1;         //limiting error(dR1/R1) in %
dR3    = 0.5;         //limiting error(dR1/R1) in %
 
//calculations
R4    = (R1*R2)/(R3);    //unknown resistance in Ω
dR4   =dR1+dR2+dR3;          //relative error of unknown resistance in % ranging - to +
e     = R4*(dR4/(100));   //limitng error in Ω

//result
mprintf("unknown resistance = %.2f Ω",R4);
mprintf("\nrelative error of unknown resistance ranging - to + = %3.2f percentage ",dR4);
mprintf("\nlimitng error = %3.2f Ω",e);

