clc
//Chapter3: Modulation
//Example3.1, page no 135
//Given
Ic=10 //carrier current in Amps
Imod=11.6// Current after modulation
Rl=1//Assumed load in ohm
Pmod=Rl*Imod^2//power before modulation
Ma= sqrt(2*((Pmod/Ic^2)-1))//percentage modulation
Pc=10
Pmod=Pc*(1+(Ma^2/2))//power after modulation
mprintf('percentage modulation is:%f%c\n Power after modulation is:%f watts',Ma*100,'%',Pmod)
