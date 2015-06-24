clear;
clc;

//Example - 2.2
//Page number - 42
printf("Example - 2.2 and Page number - 42\n\n");

//Given
Tc = 647.1;//[K] - Critical temperature
Pc = 220.55;//[bar] - Critical pressure
Tr = 0.7;// Reduced temperature

T = Tr*Tc;//[K]
//From steam table,vapour pressure of H2O at T is 10.02 [bar], as reported in the book
P = 10.02;//[bar]
w = -1-log10((P/Pc));
printf(" The acentric factor (w) of water at given condition is %f ",w);