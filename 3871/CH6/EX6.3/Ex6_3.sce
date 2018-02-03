//===========================================================================
//chapter 6 example 3

clc;clear all;
 
//variable declaration
Rm   = 10;                                               //instrument resistance in Ω
Im   = 0.05;                             //full scale defelection current in A
I    =100;                                    //current to be measured in A
V    = 750;                                               //voltage to be measured in V
 
//calculations
R    = (V/(Im))-Rm; //series resistance in Ω
N    = I/(Im);                              //power of shunt
Rs   = Rm/(N-1);           //resistance in Ω

 
 
//result
mprintf("resistance to be connected in series to enable the instrument to measure current upto 1A is %3.5f Ω",R);
mprintf("\nshunt resistance required for full-scale defelction with 10v is %3.4f Ω",Rs);
