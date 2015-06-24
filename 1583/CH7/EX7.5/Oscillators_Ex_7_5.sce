clc
//Chapter 7:Conditions for Oscillation
//example 7.5 page no 265
//given
Co=3.2//shunt capacitance
C1=0.008
k=Co/C1//ratio
fa=10^6//crystai's antiresonant frequency
fs=1+(2*k)^-1//series resonant frequency
mprintf('the series resonant frequency is %f MHz',fs)
