// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_20
clc; clear;
// Two series coils, each with an L of 250 uH, have a total inductance of 550 uH connected series-aiding and 450 uH series-opposing. (a) How much is the mutual inductance Lm between the two coils? (b) How much is the coupling coefficient k?

// Given data

l1 = 250*10^-6;     // Coil Inductance 1=250 uH
l2 = 250*10^-6;     // Coil Inductance 2=250 uH
Lts = 550*10^-6;    // Inductance series-aiding=550 uH
Lto = 450*10^-6;    // Inductance series-opposing=450 uH

Lm = (Lts-Lto)/4
disp (Lm,'The Mutual Inductance in Henry')
disp ('i.e 25 uH')

lt = sqrt(l1*l2);

k = Lm/lt;
disp (k,'The Coupling coefficient k is')
