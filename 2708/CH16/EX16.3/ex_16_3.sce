//Example 16.3 //frequency & energy of photon 
clc;
clear;
//given data :
lamda=4D-7;// de-Broglie wavelength in m
c=3D8;// speed of light in m/s
h=6.62D-34;// plank's constant in joules-sec
v=c/lamda;// frequency of photon in Hz
E=h*v;// energy in joules
E=E/1.6D-19;// Energy in eV
disp(v,"frequency of photon in Hz")
disp(E,"Energy of Photon in eV")
