// Grob's Basic Electronics 11e
// Chapter No. 15
// Example No. 15_8
clc; clear;
// For ultrasonic waves at a frequency of 34.44 kHz, calculate the wavelength in feet and in centimeters.

// Given data

c = 1130;   // Speed of light=1130 ft/s
f = 34.44*10^3;    // Freq=100 Hz
in = 2.54;       // 2.54 cm = 1 in
ft = 12;         // 12 in = 1 ft

l = c/f;
disp (l,'The Lamda or Wavelenght in ft')

a = l*ft;

l1 = a*in;
disp (l1,'The Lamda or Wavelenght in cm')
disp ('appox 1 cm')
