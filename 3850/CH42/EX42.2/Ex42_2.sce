
//To Find the Maximum Wavelength of Light that can cause Photooelectric Effect in Lithium

//Example 42.2

clear;

clc;

h=4.14*10^-15;//Plank's Constant in eV-s

c=3*10^8;//Speed of Light in m/s

phi=2.5;//Work Function of Lithium in eV

l=h*c/phi;//Threshold Wavelength in metres

printf("Maximum Wavelength of Light to cause Photoelectric Effect in Lithium = %.0f nm",l*10^9);
