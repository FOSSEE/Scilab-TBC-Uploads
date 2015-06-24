//Exa 9.14
clc;
clear;
close;
// given :
N1=400 // electron density of D layer in electrons/cm^3 
N2=5*10^5 // electron density of E layer in electrons/cm^3 
N3=2*10^6 // electron density of F layer in electrons/cm^3
// formula : fc=9*sqrt(N) 
fc1=9*sqrt(N1) // critical frequency in Khz of EM wave for D layer
fc2=9*sqrt(N2) // critical frequency in MHz of EM wave for E layer
fc3=9*sqrt(N3) // critical frequency in MHz of EM wave for F layer
disp(fc1,"critical frequency of EM wave for D layer in kHz:")
disp(fc2/10^3,"critical frequency of EM wave for E layer in Mhz:")
disp(fc3/10^3,"critical frequency of EM wave for F layer in Mhz:")



//note: the value of fc3 in book is equal to 12.8MHz but the correct is 12.72MHz.
