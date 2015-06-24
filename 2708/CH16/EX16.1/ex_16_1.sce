//Example 16.1 //de-broglie wavelength 
clc;
clear;
//given data :
h=6.62D-34;// plank's constant in joules-sec
m=9.1D-31;// mass of electron in Kg
V=1.25D3;// Potential difference in kV
E=V*1.6D-19;// energy associated to potential in joule
lamda=h/sqrt(2*m*E);// formula to calculate
disp(lamda,"de broglie wavelength in m ")

//in book it is  wronglly calculated
