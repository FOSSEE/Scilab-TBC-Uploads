//Find average atomic weight of Hydrogen.
//Exa:1.1
close;
clc;
clear;
a1=1.0078;//atomic weight of H-1
a2=2.0143;//atomic weight of H-2
p1=99.985;//% of H-1
p2=.015;//% of H-2
a=((a1*p1)+(a2*p2))/100
disp(a,"Average atomic weight of Hydrogen = ");