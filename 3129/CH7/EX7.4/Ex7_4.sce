//Finding the values of the Snubber Circuit for a thyristor cicuit
//Example 7.4(Page No- 340)
clc
clear
//given data
dv = 100;//V/us;
I_TD = 100;//A
R = 5;//Ohm
L = 0;//H
Ls = 0;
fs = 2*10^3;//Hz
Vs = 200;//V

//part(a)
Rs = Vs/I_TD;
Cs = ((0.632*R*Vs)/(100*(R+Rs)^2));
printf('(a) Rs : %d Ohm',Rs);
printf('\n     Cs : %.3f uF',Cs);
Cs = Cs*10^-6;//to convert into F

//part(b)
Ps = 0.5*Cs*Vs^2*fs;
printf('\n (b) The snubber loss: %.1f W',Ps);

//part(c)
printf('\n (c) Assuming that all the enerfy stored in Cs is dissipated at Rs only the powering rating of the snubber resistor is %.1f W',Ps)
