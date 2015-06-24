//Example No. 8.3.1
clc;
clear;
close;
format('v',7);
Zcs=73+%i*42.5;//Ω(Impedence of complementry structure)
Eta=120*%pi;//(Constant for free space)
ZS=Eta^2/4/Zcs;//Ω(Input Impedence)
disp(ZS,"Input impedence in Ω : ");
//At resonance
Zcs=73;//Ω(Impedence of complementry structure)
Eta=120*%pi;//(Constant for free space)
ZS=Eta^2/4/Zcs;//Ω(Input Impedence)
disp(ZS,"At resonance, Input impedence in Ω  : ");
disp("ZS can be rounded to 500 Ω");
