//chapter-10 page 487 example 10.4
//==============================================================================
clc;
clear;

//For a geostationary communication satellite
f=6*10^(9);//uplink frequency in Hz
Pt=1000;//Transmitter power in W
x=36000*10^3;//vertical distance between surface of earth and satellite in m
a=5;//antenna elevation angle in deg
GtdB=60;//antenna gain of transmitter in dB
GrdB=0;//antenna gain of receiver in dB
c=3*10^8;//Velocity of light in m/sec

//CALCULATION
Gt=10^(GtdB/10);//antenna gain of transmitter
Gr=10^(GrdB/10);//antenna gain of receiver
w=c/f;//wavelength in m
Ar=(w^2)*(Gr/(4*(%pi)));//area in sqm
r=x/(sind(a));//distance between transmitter and receiver in m [From Sine formula and diagram]
Pr=((Pt*Gt*Ar)/(4*(%pi)*r^2))/10^(-12);//The received power at the input of the satellite receiver in pico watts

//OUTPUT
mprintf('\nThe received power at the input of the satellite receiver is Pr=%1.2f pico watts(pW)',Pr);

//=========================END OF PROGRAM=============================== 
