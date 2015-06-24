// Example 5.4.1  page 5.17

clc;
clear;

d=1d-6;     //lateral displacement
W=4.95d-6;  //MFD

Lsm_lat= -10*log10(%e^(-(d/W)^2));      //computing loss
printf("\nInsertion loss is %.2f dB.",Lsm_lat);
