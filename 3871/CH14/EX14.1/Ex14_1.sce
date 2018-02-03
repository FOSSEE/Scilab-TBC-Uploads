//=====================================================================================
//Chapter 14 example 1
clc;
clear all;

//variable declaration
VREF    =10;        //reference voltage in V


//calculations
W1  = VREF/2;           //the second MSB weight in V
W2 = VREF/4;           //the third MSB weight in V
W3 = VREF/8            //the fourth (or LSB ) MSB weight in V
W   = VREF+W1+W2+W3;         //full scale output in V
r      = W/4;           //resolution in V

//result
mprintf("the second MSB weight =%3.2d",W1);
mprintf("\nthe third MSB weight =%3.2d",W2);
mprintf("\nthe fourth (or LSB ) weight =%3.2d",W3);
mprintf("\nthe resolution of DAC is equal to the weight of the LSB = %3.2f V",W3);
mprintf("\nfull scale output = %3.2f V",r);
