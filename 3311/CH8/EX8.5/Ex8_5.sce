// chapter 8
// example 8.5
// Calculate the conduction and blocking period of the thyristor
// page-446
clear;
clc;
// given
Edc=220; // in V (dc source)
f=2; // in Khz (chopper frequency)
E0=170; // in V (load voltage)
// calculate
f=f*1E3;
// since E0=Edc*Ton*f, therefore we get
Ton=E0/(Edc*f);// calculation of conduction period of the thyristor
T=1/f; // calculation of chopping period
Toff=T-Ton; // calculation of  blocking period of the thyristor
printf("\nThe conduction period of the thyristor is \t Ton=%.3f s",Ton*1E3);
printf("\nThe blocking period of the thyristor is \t Toff=%.3f s",Toff*1E3);
// Note: the answer varies slightly due to precise calculation