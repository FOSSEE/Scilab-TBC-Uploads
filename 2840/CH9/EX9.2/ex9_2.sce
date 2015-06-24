clc;
clear all;
h = 6.62e-34; // Planck's constant J.s
v = 440e3; // Operating frequency of radio in Hertz
P = 20e3 ; // Power of radio transmitter in Watts
n = P/(h*v);// Let n be the number of photons emitted per second
disp('',n,'Number of photon emitted per second is ');
