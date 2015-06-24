clear;
clc;
//Example 7.13
gm=1;
Cgd=0.04;
Rl=10;
Cgs=0.2;
Cm=Cgd*(1+gm*Rl);
printf('\nMiller capacitance=%.3f pF\n',Cm)
Cm=0.44*0.001;//nF
Cgs=0.2*0.001;//nF
fT=gm/(2*%pi*(Cgs+Cm));
printf('\ncutoff frequency=%.3f MHz\n',fT)
