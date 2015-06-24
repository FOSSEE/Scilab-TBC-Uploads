//clear//
//Caption: To find the energy of the photon incident on photodiode
//and Minimum incident optical power
//Example7.4
//page 262
clear;
clc;
close;
h =  6.626e-34; //planks constant J/s
C = 3e08; //free space velocity in m/s
B = 10e06; //data rate 10 Mb/sec
tuo = 2/B; //1/tuo = half the data rate B
Lambda = 850e-09; //operating wavelength in nm
E = 20.7*h*C/Lambda;
Pi = E/tuo;
disp(E,'Energy of the incident photon E =')
disp(Pi,'minimum incident optical power Pi =')
disp(10*log10(Pi*1000),'minimum incident optical power in dBm =')
//Result
// Energy of the incident photon E =  4.841D-18  
// minimum incident optical power Pi = 2.420D-11  
// minimum incident optical power in dBm =  - 76.161059  
