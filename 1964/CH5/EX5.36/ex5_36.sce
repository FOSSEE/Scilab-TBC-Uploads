//Chapter-5, Example 5.36, Page 198
//=============================================================================
clc
clear
//INPUT DATA
L=40*10^-3;//inductance in henry
C=0.01*10^-6;//capacitance in uf
//CALCULATIONS
fr=1/(2*%pi*sqrt(L*C));//resonant frequency
mprintf("Thus resonant frequency is %d hz\n",fr);
//=================================END OF PROGRAM======================================================================================================
