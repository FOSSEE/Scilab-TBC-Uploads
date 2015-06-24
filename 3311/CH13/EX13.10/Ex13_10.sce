// chapter 13
// example 13.10
// What is the minimum value of load inductance and what will be the new value of L
// page-827
clear;
clc;
// given
di_dt=15; // in A/us
Edc=150; //  in V
R=620; // in ohm
R_L=62; // in ohm
// calculate
di_dt=di_dt/1E-6; // changing unit from A/us to A/s
L=Edc/di_dt; // calculation of minimum value of load inductance
L1=Edc*((R+R_L)/R)/di_dt; // calculation of new value of L
printf("\nThe minimum value of load inductance that will protect the device is \t L=%.f uH",L*1E6);
printf("\nThe required new value of inductance \t\t\t\t\t L=%.f uH",L1*1E6);
// Note :The answer vary slightly due to precise calculation