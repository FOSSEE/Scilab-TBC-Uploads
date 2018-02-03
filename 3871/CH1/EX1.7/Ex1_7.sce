//=====================================================================================================
//chapter 1 example 7

clc;
clear all;

//variable declaration
t1     =500;       //temperature in °C
t2     =1250;       //temperature in °C
r      = 0.12;      //dead space in pyrometer in per cent of span

//calculations
S     = t2-t1;               //span the algebric diffeerence between the upper and lower range values
d     = (r/(100))*S;    //dead space in °C 

//result
mprintf(" a change of %3.2f °C must occur before it is detected",d);

//=========================================================================================================
