//===========================================================================
//chapter 6 example 5
clc;clear all;
 
//variable declaration
Rm  = 2;                                                //instrument coil resistance in Ω
V   = 250;                                              //full-scale reading in V
Rs  = 5000;                                           //series resistance in Ω
Rsh = 2*10^-3;                                                //shunt resistance in Ω
 
 
//calculations
Im   = V/((Rm+Rs));                                //current flowing through the instrument for full-scale deflection in A
Is   = (Im*Rm)/(Rsh);            //current through shunt resistance in A 
I    = Im+Is;                                          //current range of instrument in A
 
//result
mprintf("current flowing through the instrument for full-scale deflection is %3.5fA",Im);
mprintf("\ncurrent through shunt resistance is %3.2f A",Is);
mprintf("\ncurrent range of instrumentis %3.1f A",I);
