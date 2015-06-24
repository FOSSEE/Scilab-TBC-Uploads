clc
//Chapter3: Modulation
//Example3.2, page no 135
//Given
Pc=9e3// Tx Power without modulation
Pmod=10.125e3//Tx Power after modulation
Ma= sqrt(2*((Pmod/Pc)-1))//depth of (percentage) modulation
mprintf('Depth of modulation is:%f',Ma)
