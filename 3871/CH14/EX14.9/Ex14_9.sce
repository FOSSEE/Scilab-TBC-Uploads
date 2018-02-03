//=====================================================================================
//Chapter 14 example 9

clc;
clear all;

//variable declaration
n   =4;         //number of full digits 
v1  = 10;        //voltage in V
V1      = 1;       //voltage in V
V2      =10;        //voltage in V

//calculations
R       = 1/(10^n);     //resolution
R1      = R*v1;     //resolution on 1V range in V
R2      = R*V1;     //resolution on 1V range in V for display 0.6132 V
R3      = R*V2;     //resolution on 10V range in V for display 0.6132 V

//result
mprintf("R  = %3.4f V",R);
mprintf("\nR1 = %3.4f V",R1);
mprintf("\nany decimal upto third  decimal can be displayed ");
mprintf("\nhence 13.97 can be dislayed as 13.970")
mprintf("\n R2 = %3.4f V",R2);
mprintf("\nany deccimal upto fourth decimal can be displayed on 1V");
mprintf("\nhence 0.6132 can be dislayed as 0.6132 V");
mprintf("\n R3 = %3.4f V",R3);
mprintf("\nany deccimal upto third decimal can be displayed on 10 V ");
mprintf("\nhence 0.6132 can be dislayed as 0.613 V");

