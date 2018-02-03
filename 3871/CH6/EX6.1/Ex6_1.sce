//===========================================================================
//chapter 6 example 1

clc;
clear all;
 
//variable declaration
Im   = 50*10^-6;              //full scale deflection current in A
Rm   = 1000;             //instrument resistance in Ω
I    = 1;                    //total current to be measured in A
 
//calculations
Rs   = (Rm/((I/(Im))-1));       //resistance of ammeter in Ω
 
 
//result
mprintf("resistance of ammeter shunt required Rs = %3.7f Ω",Rs);
