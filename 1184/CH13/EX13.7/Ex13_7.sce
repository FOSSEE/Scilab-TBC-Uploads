//Example 13-7,Page no - 508

clear
clc

C =4*10^-12
f =800*10^6
diele = 3.5
h = 0.0625
w = 0.13
t = 0.002

Z0 = 38.8*log(0.374/0.106)
Xc = 1/(6.28*f*C)

printf('The charecteristics impedance of the transmission line is %.1f ohm',Z0)
printf('\n The reactance of the capacitor is %.2f ohm',Xc)
