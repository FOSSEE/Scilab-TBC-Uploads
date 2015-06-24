//Chapter-12, Example 12.16, Page 363
//=============================================================================
clc
clear
//The frequency of given input signal is 2000 hz.Hence,the period of the signal is 0.5ms.During the negative half of the signal,the diode is forward biased and it acts like a short circuit and the capacitor charges to 20 V.THis can be found out by applying Kirchoff's law in the input side.
//15+Vc-5=0;
//and
//Vc=20 V
//The voltage across the resistor will be equal to Dc voltage 5V
//During the positive half of input signal,the diode is reverse biased and it acts like an open circuit.Hence,the 5V battery has no effect on V0.Applying Kirchhoff's voltage law around the outside loop,we get 
//15+20-Vo=0
//Vo=35V
mprintf("Vc=20V\n")
mprintf("the voltage across resistor will be equal to 5V")
//=================================END OF PROGRAM=======================================================================================================
