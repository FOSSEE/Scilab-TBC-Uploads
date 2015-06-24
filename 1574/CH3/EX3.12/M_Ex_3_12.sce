clc
//Chapter3: Modulation
//Example3.12 page no 145
//Given
Pc=9e3//unmodulated carrier power
Pt=10.125e3//Modulated carrier power
Ma=sqrt(2*((Pt/Pc)-1))//depth of modulation
mprintf('The depth of modulation is: %d%c',Ma*100,'%')
