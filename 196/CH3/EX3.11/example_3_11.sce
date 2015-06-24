//Chapter 3
//Example 3-11
//ProbonThreeChannelInvertingAmplifier 
//Page 56
clear;clc;
//Channel 1
Ri= 10*10^3;//Choosing Input resistance
Acl = -10 ;
Rf1 = - (Acl * Ri);
printf("\n\n Value of Rf1 =  %.4f ohm \n\n",Rf1)
//Channel 2
Acl1 = -5;
Rf2 = - (Acl1 * Ri);
printf("\n\n Value of Rf2 =  %.4f ohm \n\n",Rf2)
//channel 3
Acl2 = -2;
Rf3 = - (Acl2 * Ri);
printf("\n\n Value of Rf3 =  %.4f ohm \n\n",Rf3)