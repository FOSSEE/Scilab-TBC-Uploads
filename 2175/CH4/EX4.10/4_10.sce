clc;
x1=0.96;
sf1=1.992;
sfg1=4.717;
s1=sf1+x1*sfg1;

hf1=697;
hfg1=2067;
h1=hf1+x1*hfg1;
h2=h1;

hf2=584;
hfg2=2148;
x2=(h2-hf2)/hfg2;

sf2=1.727;
sfg2=5.214;
s2=sf2+x2*sfg2;

disp("increasi in entropy is:");
disp("kJ/kg K",s2-s1)
