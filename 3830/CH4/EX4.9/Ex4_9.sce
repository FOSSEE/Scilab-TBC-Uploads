// Exa 4.9

clc;
clear;

// Given

// Referring Lissajous pattern shown in figure
wx = 1 ; // Sum of x-peak pattern
wy = 2.5; // sum of y-peak pattern
fx = 3; // frequency of horizontal signal

X = wy/wx ; // X is ratio of fy/fx

// Therefore, fy = 2.5*fx

printf(' Frequency of vertical signal = %.1f kHz \n ',X*fx);

// The answer provided in the textbook is wrong
