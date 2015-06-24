clc;clear;
//Example 18.2
//calculation of probability

//given values
T=300;//temp in K
kT=.026;//temperture equivalent at room temp in eV
Eg=5.6;//forbidden gap in eV

//calculation
f=1/(1+%e^(Eg/(2*kT)));

disp(f,'probability of an e being thermally promoted to conduction band is');
