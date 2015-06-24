//Exa 9.16
clc;
clear;
close;
// given :
d=2600 // distance between the points in Km
d=2600*10^3 // distance between the points in m
fc=4 // critical frequency in MHz
fc=4*10^6 // critical frequency in Hz
h=200 // height of ionospheric layer in km
h=200*10^3 // height of ionospheric layer in m
MUF=fc*sqrt(1+(d/(2*h))^2) // maximum usable frequency   (this step is Misprinted in the book)
disp(MUF/10^6,"maximum usable frequency in MHz:")




//note: Answer in the book is wrong.
