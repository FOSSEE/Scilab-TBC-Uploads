//Example 4_16
clc();
clear;
//To find the wavelength and energy of X-ray beam
theta=27.5                         //units in degrees
n=1
h=1
k=1
l=1
H=6.625*10^-34                   //planks constant
c=3*10^10                //velocity of light units in meters
a=5.63*10^-10                     //units in meters
lemda=(2*(a/sqrt(h^2+k^2+l^2))*sin(theta*%pi/180))/n*10^10
printf("The wavelength of X-Ray beam is %.0f angstrom",lemda)
lemda=lemda*10^-10   //units in cm
E=(H*c)/lemda
E=E*10^20  //units in Joules
E=E/(1.6*10^-19)
printf("\n\nThe energy of X-ray beam is ")
disp(E)
printf("eV")
