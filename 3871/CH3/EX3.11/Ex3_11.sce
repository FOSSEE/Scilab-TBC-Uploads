//===========================================================================
//chapter 3 example 11

clc;clear all;

//variable declaration
V      = 200;       //full-scale reading i V
n      = 100;       //number of divivsions of scale

//calculations
n1     = V/(n);     //1 scale division in V
R      = n1/(5);    //1/5 th of scale division in V

//result
mprintf("resolution = %3.2f V",R);
