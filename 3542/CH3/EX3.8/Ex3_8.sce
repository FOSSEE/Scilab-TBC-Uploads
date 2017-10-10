// Example 3.8
// To find number of channels in 3 km by 3 km square centered around A in Figure 3.9 for a)without use of microcell b)with the use of lettered microcells c)all base stations are replaced by microcells
// Page 89

clc;
clear;

// Given data
R=1;                                                                      // Cell radius in km
r=0.5;                                                                    // Micro-cell radius in km
Nc=60;                                                                    // Number of channels in base station

// a)To find number of channels without use of microcell
Nb1=5;                                                                     // Number of base stations in given area
N1=Nb1*Nc;                                                                 // Number of channels without use of microcell

// b)To find number of channels with the use of lettered microcells
Nb2=6;                                                                     // Number of lettered microcells
Nb2=Nb1+Nb2;                                                               // Total number of base stations in given area
N2=Nb2*Nc;                                                                 // Number of channels with the use of lettered microcells

// c)To find number of channels if all base stations are replaced by microcells
Nb3=12;                                                                    // Number of all the microcells
Nb3=Nb1+Nb3;                                                               // Total number of base stations in given area
N3=Nb3*Nc;                                                                 // Number of channels if all base stations are replaced by microcells

// Displaying the result in command window
printf('\n Number of channels without use of microcell = %0.0f channels',N1);
printf('\n \n Number of channels with the use of lettered microcells = %0.0f channels',N2);
printf('\n \n Number of channels if all base stations are replaced by microcells = %0.0f channels',N3);
