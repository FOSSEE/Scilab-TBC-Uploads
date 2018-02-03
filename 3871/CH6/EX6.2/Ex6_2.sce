//===========================================================================
//chapter 6 example 2
clc;clear all;
 
//variable declaration
Rm    = 1;                                              //instrument resistance in Ω
Rse   = 4999;                                       //series resistance in Ω
V     = 250;                                            //full-scale deflection voltage in V
Rs    = 4999;                 //Shunt resistance in Ω(Rs =1/(499))
I1    = 50;                                               //full-scale defelction current in A
 
//calculations
Rs1   = 1/(Rs);
Im    = V/(Rm+Rse);               //full-scale deflection current in A
I     = Im*(1+(Rm/Rs1));         //current in A
N     = I1/(Im);          
Rsh   = Rm/(N-1);                    //shunt resistance in Ω
 
//result
mprintf("full-scale defelction current in Im = %3.2f A",Im);
mprintf("\ncurrent range of instrument when used as an ammeter with coil connected across shunt is I = %3.2f A",I);
mprintf("\nShunt resistance for the instrument to give a full-scale deflection of 50A is Rsh = %3.4f Ω",Rsh);
 
 
