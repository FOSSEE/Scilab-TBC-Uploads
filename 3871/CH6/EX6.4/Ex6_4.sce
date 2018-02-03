//===========================================================================
//chapter 6 example 4
clc;clear all;
 
//variable declaration
Rm   = 5;                                               //instrument resistance in Ω
Im   = 15*10^-3;                             //full scale defelection current in A
I    =1;                                    //current to be measured in A
V    = 10;                                               //voltage to be measured in V
 
//calculations
N    = I/(Im);                              //power of shunt
Rs   = Rm/(N-1);           //resistance in Ω
R    = (V/(Im))-Rm; //series resistance in Ω
 
 
//result
mprintf("resistance to be connected in parallel to enable the instrument to measure current upto 1A is %3.5f Ω",Rs);
mprintf("\nshunt resistance required for full-scale defelction with 10v is %3.4f Ω",R);
