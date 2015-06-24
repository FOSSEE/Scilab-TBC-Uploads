clear;
clc;
disp("--------------Example 5.2---------------")
S=1000; // baud rate
N= 8000; // bit rate in bps
r= N/S; // data elements/signal element
L= 2^r ; // number of signal elements
printf("The number of data elements per signal element is %d bits/baud and the number of signal elements is %d .",r,L); // display result
