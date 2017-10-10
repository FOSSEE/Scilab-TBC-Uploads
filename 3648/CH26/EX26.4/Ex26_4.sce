//Example 26_4
clc();
clear;
//To find the longest wavelength of light capable of ionizing hydrogen atom
//First method
R=1.097*10^7        //Units in meter^-1
lamda=(1/R)*10^9               //Units in meters
//Second method
E=13.6      //units in eV
e1=1      //units in eV
lamda3=1240       //Units in eV
lamda2=(e1/E)*(lamda3)      //Units in nm
printf("The longest wavelength of light capable of ionizing hydrogen atom is lamda=%.1f nm",lamda2)
