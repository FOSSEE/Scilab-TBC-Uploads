// Example 10.5.1  page 10.24

clc;
clear;

To=12.6;    //width of output pulse
Ti=0.3;     //width of input pulse
l=1.2;      //length of measurement

Pulse_dispersion = sqrt(To^2 - Ti^2);   //computing pulse dispersion
PDKM=Pulse_dispersion/l;        //computing pulse dispersion per Kilometer
BW=0.44/PDKM;       //computing optical bandwidth
BW=BW*1000;
printf("\nPulse broadning is %.1f ns/km.\nOptical bandwidth is %.1f MHz.Km.",PDKM,BW);
