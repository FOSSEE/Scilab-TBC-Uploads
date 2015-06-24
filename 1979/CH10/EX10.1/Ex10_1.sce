//chapter-10 page 486 example 10.1
//==============================================================================
clc;
clear;

ht=144;//TV transmitter antenna height in m
hr=25;//TV receiver antenna height in m
//Radio horizon is about 4/3 as far as the optical horizon

//CALCULATION
dr=4*sqrt(hr);//distance in km
dt=4*sqrt(ht);//Radio Horizon in km
d=dt+dr;//The Maximum distance of Propagation of the TV signal in km 

//OUTPUT
mprintf('\nThe Maximum distance of Propagation of the TV signal is d=%2.0f km \nRadio Horizon is dt=%2.0f km',d,dt);

//=========================END OF PROGRAM===============================

