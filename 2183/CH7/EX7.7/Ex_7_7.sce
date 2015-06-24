// Example 7.7 //width  of deplition region
clc;
clear;
close;
n=70;//efficinecy
absc=10^5;//cm^-1
W=(2.303*-log10(1-(n/100)))/(absc);//in meter
disp(round(W*10^6),"deplition width in micro meter is")
