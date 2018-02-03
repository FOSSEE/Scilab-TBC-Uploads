//===========================================================================
//chapter 1 example 3

clc;
clear all;

//variable declaration
n     = 100;              //highest mutiplier switch in mA
N     = 100;              //number of divisions


//calculations
R     = (N*10^-3)*n;              //Range of instrument in A
S     = 0-n;              //scale range

//result
mprintf("Range of instrument = %3.2f A",R);
mprintf("\nScale Range  = 0%3.2f",S);

//=============================================================================
