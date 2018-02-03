//=====================================================================================
//Chapter 16 example 12
clc;clear all;

//variable declaration
fx    = 1000;    //frequency of horizontal input in Hz
Pv   = 2;       //pointsof tangency to vertical line 
Ph   = 5;       //pointsof tangency to horizontal line 

//calculations
fy   = fx*(Ph/(Pv));     //frequency ofvertical input in Hz

//result
mprintf("frequency ofvertical input = %3.2f Hz",fy);
