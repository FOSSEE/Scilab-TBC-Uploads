//Chapter 3, Problem 8
clc

j=0.25+(%i*0.5)                       //Normalised impedance from smith chart
Zo=50                               //Characteristic impedance

//calculating line impedance at point J in Figure 3.15
Zl=j*Zo

printf("Line impedance = %.1f + j%d",real(Zl),imag(Zl))
