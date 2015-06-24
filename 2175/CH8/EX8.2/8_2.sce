clc;
h1=3442.6;
s1=7.066;
s2=s1;
sf2=0.391;
sfg2=8.13;
x2=(s2-sf2)/sfg2

hf2=112;
hfg2=2438;
h2=hf2+x2*hfg2;

h3=112;
W12_=h1-h2;

Q=h1-h3;

Ceff=(h1-h2)/(h1-h3);
disp(Ceff,"cycle efficiency is:");

ssc=1/(h1-h2);
disp("kg/kW h",ssc,"specific steam consumption is:");

disp("cycle efficiency has increased due to superheating and the improvement in specific steam consumption is even more marked:")
