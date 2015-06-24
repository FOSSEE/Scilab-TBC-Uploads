// Example 7.10.6  page 7.55

clc;
clear;

h=6.626d-34;    //plank's constant
c=3d8;      //speed of light
q=1.602d-19;  //charge of electron
P0=0.5d-6;  //incident optical power(assumption)
lamda=1.5d-6;   //wavelength
M=20;       //Multiplication factor
R=0.6;      //Responsivity

eta=(R*h*c)/(q*lamda);  //computing quantum efficiency
Ip=P0*R;        //computing photocurrent
I=M*Ip*10^6;    //computing output current

printf("\nQuantum efficiency is %.3f micrometer.\nOutput current %d microAmpere.",eta,I);

//answer of quantum efficiency in the book is given as 0.495, deviation of 0.001.


