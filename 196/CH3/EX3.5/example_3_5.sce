//Chapter 3
//Example 3-5
//ProbOnVoltageGain 
//Page 50,figure 3-3
clear;clc;
//Given
Rf=20*10^3;
Ri=10*10^3;
Acl=-(Rf/Ri);//Voltage Gain
printf("\n\n Value of Voltage Gain =  %.6f  \n\n",Acl)