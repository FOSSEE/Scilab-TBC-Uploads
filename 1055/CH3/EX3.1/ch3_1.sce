//To determine the capacitance and charging current 
clear
clc;
Dm=2.015;// mutual GMD of conductors(m)
r=.4;// radius of conductor(cm)
C=10^-9*1000/(18*log(201.5/.4));
Ic=132*1000*8.928*314*(10^-9)/sqrt(3);
mprintf("capacitance =%.13f F/km\n",C);//Answers don't match due to different reprentation
mprintf("charging current=%.4f amp/km",Ic);
