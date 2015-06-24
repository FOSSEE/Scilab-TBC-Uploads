clc
//Chapter3: Modulation
//Example3.28, page no 177
//Given
R=1//Antenna Resistance assumed to be 1 ohm for ease of calculation
Ic=10.8// current with no modulation
Pc=Ic^2*R//power with no modulation
It=12.15//modulated current
Pt=It^2*R// modulated power
ma=(sqrt(2*(((It/Ic)^2)-1)))//modulation depth)

mprintf('Depth of modulation:%f %c',round(1000*ma)/10,'%');
