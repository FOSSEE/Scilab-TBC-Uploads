//Example 1.12
clc();
clear;
//To calculate the wavelength of the light used
Dnp=0.8   //units in cm
Dn=0.3      //units in cm
n1=25
n2=5
p=n1-n2
R=100         //units in cm
lamda=(Dnp^2-Dn^2)/(4*p*R)                //units in cm
printf("The wavelength of light used is %.8fcm",lamda)
//In text book the answer is printed wrong as 4.87*10^-5cm
//correct Answer is 6.875*10^-5cm
