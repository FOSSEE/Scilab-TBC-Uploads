//Chapter-5, Example 5.40, Page 200
//=============================================================================
clc
clear
//INPUT DATA
R=10;//resistance in ohm
L=10^-3;//inductance in henry
C=1000*10^-12;//capacitance in Farads
V=20;//voltage in volts
//CALCULATIONS
fr=inv(2*%pi*sqrt(L*C));//resonant frequency in Hz
Q=(inv(R))*(sqrt(L/C));//Q-factor
Bw=fr/Q;//bandwidth in Hz
hf1=fr+Bw;//halfpower freq1 in Hz
hf2=fr-Bw;//halfpower freq2 in Hz
mprintf("Thus resonant freq,Q-factor and new halfpower frequencies are %d hz ,%d ,%g hz,%g hz respectively",fr,Q,hf1,hf2);
//=================================END OF PROGRAM======================================================================================================
