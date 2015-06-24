// Grob's Basic Electronics 11e
// Chapter No. 15
// Example No. 15_5
clc; clear;
// The length of a TV antenna is lamda/2 for radio waves with f of 60 MHz. What is the antenna length in centimeters and feet?

// Given data

c = 3*10^10;     // Speed of light=3*10^10 cm/s
f = 60*10^6;     // Freq=60 MHz
in = 2.54;       // 2.54 cm = 1 in
ft = 12;         // 12 in = 1 ft

l1 = c/f;
l = l1/2;
disp (l,'The Height in cm')

li = l/in
lf = li/ft;
disp (lf,'The Height in feet')

