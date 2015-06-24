clc;
s1=6.5;
sf1=1.992;
sfg1=4.717;
x=(s1-sf1)/sfg1;

hf1=697;//kJ/kg
hfg1=2067;//kJ/kg
h1=hf1+x*hfg1;

h2=2995;//kJ/kg
Q=h2-h1;

disp("heat supplied:");
disp("kJ/kg",Q)
