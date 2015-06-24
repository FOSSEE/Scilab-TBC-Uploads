// Chapter 12
// Minimum acceptable frquency range
// Page.No-448
// Example_12_3
// Given
clear;clc;
DR=50;              //in dB
Bits=DR/6;  
printf("\n The Bits required are = %.1f \n",Bits); // Result
//we cannot  have fractional bit so,
printf("\n we cannot  have fractional bit so, Bits required are = %.0f \n",Bits+1); // Result
