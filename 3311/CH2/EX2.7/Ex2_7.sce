// chapter 2
// example 2.7
// Compute the peak inverse voltage
// page-32
clear;
clc;
// given
Vin=415; // in V (input voltage)
Vf=2.1; // voltage safety factor
// calculate
PIV=sqrt(2)*Vin*Vf; // calculation of peak inverse voltage
printf("\nThe peak inverse voltage is \tPIV=%.2f V",PIV); 