//=====================================================================================
//Chapter 13 example 15
clc;
clear all;

//variable declaration
A	= 0.5;
B	= 0.01;
f	= 50;
n	= 10;

//calculations
Pe	= B*(f^2);		//eddy current loss at 50 Hz in W
Pe1	= Pe/n;		//eddy current loss per kg at 50 Hz in watts

//result
mprintf("eddy current loss per kg at 50 Hz = %3.2f watts",Pe1);
