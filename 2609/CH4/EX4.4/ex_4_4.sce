////Ex 4.4
clc;
clear;
close;
format('v',9);
AOL=400;//unitless
Rio=500;//kohm
Ro=75;//ohm
ACL=100;//unitless
SF=AOL/ACL;//unitless
Rif=Rio*SF;//kohm
disp(Rif/1000,"Input impedence, Rif(Mohm)");
Rof=Ro/SF;//ohm
disp(Rof,"Output impedence, Rof(ohm)");
