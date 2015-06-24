clc;
clear all;
Q = 1.5; // Power radiated by louspeaker in Joule per second
r = 20; // Radius in meters
I0 = 1e-12; // Standard intensity level in Watts per square meters
I2 = (Q/(4*%pi*r^2)); // Intensity of the sound produced ny loudspeaker
b = 10*log10(I2/I0);//The intensity level of sound produced by loudspeaker 
disp('dB',b,'The intensity level of sound produced by loudspeaker is ')
  
