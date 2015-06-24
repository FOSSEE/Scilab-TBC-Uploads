//Chapter-4, Example 4.9, Page 137
//=============================================================================
clc
clear
//CALCULATIONS
//for subdivision a
funcprot(0);
max=40;
rms=max/sqrt(2);
mprintf("max and rms values are %d  units and %2.2f units respectively\n",max,rms);
//for subdivision b
//max=A+B
//rms=(A+B)/sqrt(2)
//for subdivision c
max1=sqrt(((10)^2)+((17.3)^2));
rms1=max1/sqrt(2);
mprintf("max and rms values are %2.2f units and %2.2f units respectively",max1,rms1);
//note:in textbook for sub div (c) square root has not taken for maximum value computed
//=================================END OF PROGRAM==============================
