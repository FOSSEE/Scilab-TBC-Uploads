//Chapter 9
//page no 325
//given
clc;
clear all;
fb1=2.5;            //in Gb/s
D1=20;          //in ps/nm.km
D2=5;          //in ps/nm.km
fb2=D1/D2*fb1;      
printf("\n fb2 = %0.0f Gb/s(OC-192)",fb2)
//Values of D1 and D2 are conflicted in question ,however solution is correct 
