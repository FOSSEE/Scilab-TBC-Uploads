//Find Energy of third and fifth orbit
//Ex:3.4
clc;
clear;
close;
e1=-13.6;//ionization potential of hydrogen in volts
n=3;//third orbit
e3=e1/(n^2);//Energy of third orbit in volts
disp(e3,"Energy of third orbit (in volts) = ");
m=5;//fifth orbit
e5=e1/(m^2);//Energy of fifth orbit in volts
disp(e5,"Energy of fifth orbit (in volts) = ");