//Chapter 3
//Example 3-15
//DesignAnAmplifier 
//Page 64
clear;clc;
//Given 
Acl = 10;// Gain is positive, so choose noninvering amplifier
R1 = 10*10^3;
Rf = (Acl*R1)-R1;
printf("\n\n Value of Rf =  %.4f ohm \n\n",Rf)
xcos('Figure3_15.xcos')//Design will be as shown in the figure
