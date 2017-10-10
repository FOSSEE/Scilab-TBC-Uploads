// Example 8.6
// To find the mean number of signal photons required in a shot noise-limited coherent communication system based on OOK for the following cases: (i) balanced homodyne receiver; (ii)balanced heterodyne receiver (a) a balanced homodyne or (b) a balanced heterodyne
// Page no. 384

clc;
clear;
close;

// Given data
Pb=1*10^-9;                                         //Error probability
neta=1;                                          //quantum efficiency

//a)for balanced homodyne receiver
Ns=(erfinv(1-(2*neta*Pb)))^2;

//(b)for balanced heterodyne receiver
Ns1=(erfinv(1-(2*neta*Pb))*sqrt(2))^2;

//Displaying the result in command window
printf("\n For a balanced homodyne receiver with PSK signal = %0.0f  ",Ns);
printf("\n For a balanced heterodyne receiver with PSK signal = %0.0f  ",Ns1);
