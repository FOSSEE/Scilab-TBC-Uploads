clc
//Chapter 10:Frequency Synthesizers
//Example 10.4 page no 417
fo=185.6*10^6//required output frequency
fr=31.25*10^3//reference frequency
P=64
disp('To begin with the hopping bin channel spacing requirement of at least 20KHz,a 2MHz crystal is connected to the MC14512-2 with the reference address inputs(pins 4,5,6) connected such that the crystal is divided by 64(RA2=0,RA1=0,RA0=1) This gives a reference frequency of 31.25KHz; and the maximum number of hops is 5.2MHz/31.25KHz=166.4hops FOr 185.6MHZ the values of N and A are found as follows:')
N=(fo/fr)/P//finding N for A=0
disp('For this value of N,find A by ')
A=(fo/fr)-92*P
mprintf('N = %d \n A = %d ',N,A)
