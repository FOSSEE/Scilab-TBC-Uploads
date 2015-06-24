// Example 10.5.b;//maximum bandwidth
clc;
clear;
close;
B=6;//bandwidth in mega hertz
Cd=8;//Photodiode capacitance in pico  farad
Ca=4;//amplifier capacitance in pico  farad
Rlm=(1/(2*%pi*B*10^6*Cd*10^-12))*10^-3;//Maximum lod resistance in Kilo ohm
B=(1/(2*%pi*Rlm*10^3*(Cd+Ca)*10^-12))*10^-6;//Maximum bandwidth in mega hertz
disp(B,"Maximum bandwidth in mega hertz")
