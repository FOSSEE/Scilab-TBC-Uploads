//Chapter-9 example 15
//=============================================================================
clc;
clear;
//input data
//Da = 6*lamda;

//Calculations

//Gp  = 6.4*(Da/lamda)^2; //power gain 

//Gp  = 6.4*(6*lamda/lamda)^2 //power gain of parabolic reflector
Gp    =6.4*(6)^2;
G     = 10*log10(Gp)//gain in dB


//Output
mprintf('Gain of parabolic reflector is %3.2f dB\n',G);

//=============end of the program==============================================
