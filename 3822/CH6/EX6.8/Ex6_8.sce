
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 6.8
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Ic=16e-3;//collector current in mA
P=130e-6;//incident power in microwatts
lamda=1.25e-6;//wavelength in micrometer
h=6.62e-34;//plank's constant in S.I units
c=3e8;//velocity of light in m/s

//case 1:
u=h*c*Ic;
v=lamda*P*1.6e-19;
Go=u/v;//optical gain of the photo transistor
//case 2:
hFE=Go/0.45;//common emitter current gain
mprintf("\n optical gain of phototransistor Go is=%.2f",Go);
mprintf("\n common emitter current gain hFE is=%.2f",hFE);
//Answers are different due to roundingoff error
