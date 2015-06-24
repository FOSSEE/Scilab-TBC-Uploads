// Example 7.5.4 
clc;
clear;
lamda=0.8d-6;
h=6.625d-34;    //plank's constant
c=3d8;      //speed of light
q=1.6d-19;  //charge of electron
ne=1.8d11;  //electrons collected
np=4d11;    //photons incident
eta=ne/np;      //computing quantum efficiency
R=eta*q*lamda/(h*c);    //computing responsivity
printf("\nResponsivity of photodiode at 0.8 micrometer is %.3f A/W.",R);

//answer in the book is 0.289. deviation of 0.001 A/W
