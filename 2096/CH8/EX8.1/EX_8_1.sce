//Example 8.1 //total voltage gain
clc;
clear;
g1=100;//FIRST STAGE GAIN
g1db=20*(log10(g1));//first stage gain in db
g2=200;//second stage gain
g2db=20*(log10(g2));//second stage gain in db
g3=400;//third stage gain
g3db=20*(log10(g3));//third stage gain in db
Tdb=g1db+g2db+g3db;//
disp(Tdb,"total gain in dB")
