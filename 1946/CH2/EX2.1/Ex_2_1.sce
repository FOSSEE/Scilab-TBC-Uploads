// Example 2.1:Thickness
clc;
clear;
close;
pi=3.14;
n1=3.5;//Waveguide Refractive Index
n2=3.0;//Cladding Refractive Index
v=6;// number of modes
h=1.5;// wavelenght in micro meter
Os= asind(n2/n1)// angle in degree
th= round(12*pi*h)/(2*pi*n1*cosd(Os));// Thickness of the film
disp(th,"Thickness of film in mircometers")
disp("Thcikness of the film should be less than 5 micro meter so that only six modes will be guided along the fiber")
