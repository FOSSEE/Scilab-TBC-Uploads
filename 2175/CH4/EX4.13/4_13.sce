clc;
h1=3248;//kJ/kg
h2=2965;//kJ/kg
h2s=2753+[(7.126-6.929)/(7.172-6.929)]*(2862-2753);

eff=(h1-h2)/(h1-h2s);
disp("isentropic efficiency is:");
disp("%",eff*100);

s1=7.126;//kJ/kg K
s2=7.379;//kJ/kg K
T0=288;//K
loss=h1-h2+T0*(s2-s1);
disp("loss of energy is:");
disp("kJ/kg K",loss);

e=(h1-h2)/loss;
disp("effectiveness is:");
disp("%",e*100);
