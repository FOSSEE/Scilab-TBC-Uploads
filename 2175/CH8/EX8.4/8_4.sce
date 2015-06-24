clc;
t1=253.2;
t2=26.7;
t6=(t1+t2)/2;

h7=584;
h3=112;
s1=6.049;
s6=s1;
s2=s1;

x6=(s1-1.727)/5.214;
x2=(s1-0.391)/8.130;

hf6=584;
hfg6=2148;
h6=hf6+x6*hfg6;

hf2=112;
hfg2=2438;
h2=hf2+x2*hfg2;

y=(h7-h3)/(h6-h3);

h1=2800;
Q=(h1-h7);

Tot=(h1-h6)+[(1-y)*(h6-h2)];

Ceff=Tot/Q;
disp("%",Ceff*100,"cycle efficiency is:");

ssc=1/Tot
disp("kg/kJ",ssc,"ssc is:")
