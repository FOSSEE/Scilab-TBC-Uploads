// chapter 12
// example 12.4
// Design E-class resonant invertor
// page-769-770
clear;
clc;
// given
R=12; // in ohm
Edc=24; // in V (DC voltage)
fs=20; // in KHz (switching frequency)
Q=7; // assumption for quality factor as done in the book
// calculate
fs=fs*1E3; // changing unit from KHz to Hz
ws=2*%pi*fs; // calculation of switching angular frequency
Ldc=0.4*R/ws; // calculation of source inductance
C1=2.165/(R*ws); // calculation of resonance element
// since Q=ws*Lr/R, therefore we get,
Lr=Q*R/ws; // calculation of inductance from series resonance
// since ws*Lr-1/(ws*Cr)=0.353*R, therefore we get,
Cr=(1/(ws*Lr-0.353*R))/ws; // calculation of capacitance from series resonance
e=(R/2)*sqrt(Cr/Lr); // calculation of damping factor
f0=1/(2*%pi*sqrt(Lr*Cr)); // calculation of resonance frequency
printf("\nThe source inductance is \t\t\t Ldc=%.1f uH",Ldc*1E6);
printf("\nThe resonance element is \t\t\t C1=%.1f uF",C1*1E6);
printf("\nThe inductance from series resonance is \t Lr=%.1f uH",Lr*1E6);
printf("\nThe capacitance from series resonance is \t Cr=%.2f uF",Cr*1E6);
printf("\nThe resonance frequency is \t\t\t f0=%.2f KHz",f0*1E-3);
// Note :The answers vary slightly due to precise calculation