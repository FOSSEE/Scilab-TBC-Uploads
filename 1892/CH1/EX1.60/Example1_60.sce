// Example  1.60

clc;clear;close;

// Given data
PA=4;//no. of poles
PB=4;//no. of poles
f=50;//in Hz
V=440;//in volt

//calculations
//Independently with A
Ns=120*f/PA;//in rpm
disp(Ns,"Independently with A, Synchrpnous speed Ns in rpm is : ");
//Independently with B
Ns=120*f/PB;//in rpm
disp(Ns,"Independently with B, Synchrpnous speed Ns in rpm is : ");
//Running as cumulative cascaded
Ns=120*f/(PA+PB);//in rpm
disp(Ns,"Running as cumulative cascaded, Synchrpnous speed Ns in rpm is : ");
//Running as differentially cascaded
disp("Running as differentially cascaded, Synchrpnous speed Ns is undefined.");
