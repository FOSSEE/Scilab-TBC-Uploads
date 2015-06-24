//Example 16.6 //energy of photoelectrons emitted
clc;
clear;
//given data :
h=6.62D-34;// plank's constant in joules-sec
c=3D8;//speed of ight
lamda=6D-7;// Threshlod wavelength in m
v=6D14;// frequency  in Hz
E=h*(v-c/lamda);// energy in joules
E=E/1.6D-19;// to convert in eV
disp(E,"energy of electrons emitted in eV")
