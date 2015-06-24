clc
disp("Example 5.65")
printf("\n")
disp("calculate the Series & parallel resonant frequencies of Crystal")
printf("Given\n")
//indutance
L=3
//Capacitor due to mechanical mounting of crystal
Cm=10*10^-12
//electrical equivalent capacitance of crystal compliance
Cs=0.05*10^-12
//electrical equivalent resistance of crystal structure internal friction
R=2*10^3
//series resonant frequency
fs=1/(2*%pi*sqrt(L*Cs))
Cp=Cm*Cs/(Cm+Cs)
//parallel resonant frequency
fp=1/(2*%pi*sqrt(L*Cp))
printf("series resonant frequency \n%f hz\n",fs)
printf("parallel resonant frequency \n%f hz\n",fp)
