// chapter 8
// example 8.4
// Calculate the required pulse width
// page-442
clear;
clc;
// given
Edc=220; // in V (dc source)
E0=500; // in V (load voltage)
Toff=80; // in us (blocking period of thyrostor)
// calculate
// since E0=Edc*(Ton+Toff)/Toff, therefore we get
Ton=(E0/Edc)*Toff-Toff;// calculation of required pulse width
printf("\nThe time required pulse width is \t Ton=%.1f us",Ton);
// Note: the answer varies slightly due to precise calculation