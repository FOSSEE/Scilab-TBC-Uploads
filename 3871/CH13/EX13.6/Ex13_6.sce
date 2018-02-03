//=====================================================================================
//Chapter 13 example 6

clc;clear all;

//variable declaration
Rc   = 1;    //resistance in Ω
N    = 5;    //multiplying factor 

//calculations
//N   = (Rs+Rc)/Rs
Rs   = Rc/(N-1);   //shunt resistance in Ω

//result
mprintf("shunt resistance = %3.2f Ω",Rs);
