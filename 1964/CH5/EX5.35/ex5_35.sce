//Chapter-5, Example 5.35, Page 198
//=============================================================================
clc
clear
//INPUT DATA
Q=250;//quality factor
fr=1.5*10^6;//resonant freq in hertz
//CALCULATIONS
Bw=(fr)/(Q);//bandwidth in Hz
hf1=fr+Bw;//half power freq 1
hf2=fr-Bw;//half power freq 2
mprintf("Thus bandwidth is %d hz\n",Bw);
mprintf("Thus value of half-power frequencies are %g hz and %g hz",hf1,hf2);
//=================================END OF PROGRAM======================================================================================================
