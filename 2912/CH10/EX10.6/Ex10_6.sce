//  chapter 10
// example 10.6
// calculate  frequency of EM waves 
// page 314
clear;
clc;
// given
V=8.50; // in micro V (voltage across Josephson junction )
e=1.6E-19; // in C (charge of electron)
h=6.626E-34; // in J/s (Planck’s constant)
//calculate
V=V*1E-6; // changing unit from V to microVolt
 v=2*e*V/h; // calculation of frequency of EM waves
printf('\nThe frequency of EM waves is \tv=%1.3E Hz',v);
// Note: the answer in the book is wrong due to calculation misatke
