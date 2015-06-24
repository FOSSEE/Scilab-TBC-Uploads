// Example 4.12, page no-155
clear
clc
Ea=1        //effective aperture
f=11.95*10^9    //downlink operating frequency
c=3*10^8  //speed of light

Ae=floor((%pi*1000*Ea^2)/4)/1000
lamda=floor(c*1000/f)/1000
ag=floor(100*4*%pi*Ae/lamda^2)/100
adb=floor(100*10*log10(ag))/100
width=70*lamda/Ea
printf("Operating wavelength = %.3fm\n Antenna Gain = %.2f\n Antenna Gain in dB = %.2fdB\n 3dB beam width = %.2f°",lamda,ag,adb,width)
