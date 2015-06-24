clc;
P=10;  //Ohm
Q=3;   //Ohm
R=12;  //Ohm
S=6;  //Ohm
G=20;  //Ohm
disp("-12I+22I1+IgG=0  (1)");  //KVL
disp("6I-9I1+29Ig=0  (2)");  //KVL
disp("13I1-3Ig=2  (3)");  //KVL
Ig=7.797*10^-3;   //from (1)(2)(3)
disp(Ig,"Current through Galvanometer in Ampere = ");  //displaying result