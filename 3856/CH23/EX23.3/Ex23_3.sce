//Evaluate Vibrational Partition Function for Carbon Monoxide at 300K and 3000K

//Example 23.3

clc;

clear;

h=6.626*10^-34;  //Planck's constant in J s

new=6.40*10^13;  //Fundamental frequency of vibration for CO in s^-1

KB=1.381*10^-23;  //Boltzmann's constant in J K^-1

T1=300; //Temperature in K

Qvib1=1/(1-exp((-h*new)/(KB*T1))); //Vibrational Partition Function for Carbon Monoxide at 300K

printf("Vibrational Partition Function for Carbon Monoxide at 300K = %.5f",Qvib1);

T2=3000; //Temperature in K

Qvib2=1/(1-exp((-h*new)/(KB*T2))); //Vibrational Partition Function for Carbon Monoxide at 3000K

printf("\n Vibrational Partition Function for Carbon Monoxide at 3000K = %.2f",Qvib2);
