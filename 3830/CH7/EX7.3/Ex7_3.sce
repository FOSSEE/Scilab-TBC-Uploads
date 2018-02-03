// Exa 7.3

clc;
clear;

// Given

N = 50; // No of turns of potentiometer per mm
Number_of_Resolution = 4; // No of resolutions of potentiometer

// Solution

Resolution = 1/N;
printf(' Resolution of potentiometer = %.3f mm \n',Resolution);
printf('  4 resolutions of potentiometer with one rotation = %.1f mm \n',10^3*Resolution/Number_of_Resolution);
