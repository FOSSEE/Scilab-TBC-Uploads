//Chapter-5, Example 5.39, Page 199
//=============================================================================
clc
clear
//INPUT DATA
R=4;//resistance in ohm
L=100*10^-6;//inductance in henry
C=250*10^-12;//capacitance in Farads
//CALCULATIONS
fr=inv(2*%pi*sqrt(L*C));//resonant frequency in Hz
Q=(inv(R))*(sqrt(L/C));//Q-factor
Bw=fr/Q;//bandwidth in Hz
hf1=fr+Bw;//halfpower freq1 in Hz
hf2=fr-Bw;//halfpower freq2 in Hz
mprintf("Thus resonant freq,Q-factor and new halfpower frequencies are %dhz ,%d,%g hz,%g hz respectively",fr,Q,hf1,hf2);
//note:given answers are wrong in textbook.Please check the answers
//=================================END OF PROGRAM======================================================================================================
