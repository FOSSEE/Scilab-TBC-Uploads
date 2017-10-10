//Chapter 1
//Example 1.11
//Page 29

clear;
clc;

Delta_K=1.5;
Delta_G=0.05;
K=100;
G=20;

//Calculation of system accuracy of flow process
printf("Here we have direct application of Delta V/V = %.2f \n",(Delta_K/K)+(Delta_G/G));
printf("If we use more statistically correct rms approach,the system accuracy would be = %.4f",sqrt((Delta_K/K)^2+(Delta_G/G)^2));
