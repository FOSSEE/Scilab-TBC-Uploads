clc;
clear all;
EF = 0.35; //Exposure factor in curie hour
SS = 5; // Percentage source strength
ET = EF/SS;//The exposure time in hour
disp('h',ET,'The exposure time is')
et=ET*60;//The exposure time in min
disp('min',et,'The exposure time is')

