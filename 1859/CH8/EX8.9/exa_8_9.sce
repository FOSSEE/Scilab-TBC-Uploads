// Exa 8.9
clc;
clear;
close;
// Given data
Y= 2+1/2;// Positive Y-peaks in pattern
X= 1/2+1/2;// Positive X-peaks in pattern
f_h= 3// frequency of horizontal voltage signal in kHz
f_yBYf_x= Y/X;
// frequency of vertical voltage signal= f_yBYf_x * f_h
f_v= f_yBYf_x * f_h;// frequency of vertical voltage signal in kHz
disp(f_v,"frequency of vertical voltage signal in kHz");
