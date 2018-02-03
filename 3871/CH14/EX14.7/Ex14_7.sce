//=====================================================================================
//Chapter 14 example 7
clc;
clear all;

//variable declaration
n   =4;         //number of full digits 
v1  = 1;        //voltage in V
v2      = 10;       //voltage in V

//calculations
R       = 1/(10^n);     //resolution
R1      = R*v1;     //resolution on 1V range in V
R2      = R*v2;     //resolution on 10V range in V

//result
mprintf("R  = %3.4f V",R);

mprintf("\nthere are 5 digits in 4 (1/2) display digit display ,so 15.84 would display as 15.840");
mprintf("\nR1 = %3.4f V",R1);
mprintf("\nany reading upto 4 th decimal can be displayed ");
mprintf("\nhence 0.5243 can be dislayed as 0.5243")
mprintf("\n R2 = %3.4f V",R2);
mprintf("\nany reading upto third decimal can be displayed ");
mprintf("\nhence 0.5243 can be dislayed as 0.524 instead of 0.5243");
