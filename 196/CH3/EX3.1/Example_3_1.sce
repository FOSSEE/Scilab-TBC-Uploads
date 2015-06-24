//Chapter 3
//Example 3-1
//ProbOnOpampDescriptions 
//Page 46,47 figure 3-1
clear;clc;
//Given
Rf=100*(10^3);//Feedback Resistance in ohms
Ri=10*(10^3);//Input Resistance in ohms
Ei=1;//Input volts
//Calculate 
//Example 3-1(a)
I=Ei/Ri;//Equation for current through Rf
printf("\n\n Current through Rf =  %.4f A \n\n",I)
//Example 3-1(b)
Vout=-(Rf/Ri)*Ei;//Equation for Output Voltage
printf("\n\n Value of output voltage =  %.4f V \n\n",Vout)
//Example 3-1(c)
Acl=-(Rf/Ri);//Closed loop gain of the amplifier 
printf("\n\n Value of closed loop gain =  %.4f \n\n",Acl)