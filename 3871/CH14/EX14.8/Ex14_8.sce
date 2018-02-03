//=====================================================================================
//Chapter 14 example 8

clc;
clear all;

//variable declaration
n   =3;         //number of full digits 
v1  = 10;        //voltage in V
v2      = 100;       //voltage in V

//calculations
R       = 1/(10^n);     //resolution
R1      = R*v1;     //resolution on 1V range in V
R2      = R*v2;     //resolution on 10V range in V

//result
mprintf("R  = %3.4f V",R);

mprintf("\nthe meter cannot distinguish the values that differ from each by less than 0.001 of full scale");
mprintf("\nR1 = %3.4f V",R1);
mprintf("\nany decimal upto second  decimal can be displayed ");
mprintf("\nhence 15.45 can be dislayed as 15.45")
mprintf("\n R2 = %3.4f V",R2);
mprintf("\nany deccimal upto one decimal can be displayed ");
mprintf("\nhence 25.65 can be dislayed as 025.6 instead of 25.65");

