//chapter-10 page 487 example 10.3
//==============================================================================
clc;
clear;

//For a microwave LOS link
f=2*10^9;//frequency of operation in Hz
c=3*10^8;//Velocity of light in m/sec
r=50000;//repeater spacing in m
PrdBm=-20;//required carrier power at the receiver i/p to avoid deterioration due to fading and noise in dBm
GtdB=34;//antenna gain of transmitter in dB
GrdB=34;//antenna gain of receiver in dB
LdB=10;//coupling and waveguide loss in transmitter in dB

//CALULATION
w=c/f;//wavelength in m
x=(w^2)/(4*(%pi));
y=(4*(%pi)*r^2);
PtdBm=PrdBm+(10*log10(y))-GtdB-(10*log10(x))+LdB-GrdB;//The required Carrier Transmitter power in dBm

//OUTPUT
mprintf('\nThe required Carrier Transmitter power is PtdBm=%2.1f dBm',PtdBm);

//=========================END OF PROGRAM===================================
