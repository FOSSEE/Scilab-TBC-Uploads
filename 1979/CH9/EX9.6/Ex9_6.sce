//chapter-9 page 412 example 9.6
//==============================================================================
clc;
clear;

//For an IMPATT diode power amplifier
Rd=25;//Negative Resistance in ohms
Rl=50;//Load Resistance in ohms

//CALCULATION
x=abs(Rd);
G=((-x-Rl)/(-x+Rl))^2;//Power gain of an IMPATT diode

//OUTPUT
mprintf('\nPower gain of an IMPATT diode is G=%1.0f',G);

//=========================END OF PROGRAM===============================


