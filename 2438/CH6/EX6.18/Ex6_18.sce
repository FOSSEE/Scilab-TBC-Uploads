//===================================================================================
// chapter 6 example 18


clc;
clear;


//input data
 C       = 0.035*10^-6;                      //capacitance in F
 tangent    = 5*10^-4;                          //power factor 
 f       = 25*10^3;                          //frequency in Hz
 I       = 250;                              //current in A
 
 
//calculation
 V      = I/(2*%pi*f*C)                  //voltage across capacitor in volts
 P      = V*I*tangent;                 //dielectric loss in watts

//result
mprintf('dielectric loss=%3.2f.watts\n',P);

//====================================================================================
