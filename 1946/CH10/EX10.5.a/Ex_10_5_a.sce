// Example 10.5.a;//maximum load resistance
clc;
clear;
close;
B=6;//bandwidth in mega hertz
Cd=8;//Photodiode capacitance in pico  farad
Ca=4;//amplifier capacitance in pico  farad
Rlm=(1/(2*%pi*B*10^6*Cd*10^-12))*10^-3;//Maximum lod resistance in Kilo ohm
disp(Rlm,"Maximum lod resistance in Kilo ohm")
