//Chapter 2
//Example 2_10
//Page 24

clear;clc;

area=2.4;
capacity=5e6;
head=100
n_penstock=0.95;
n_turbine=0.9;
n_generation=0.85;
load_kWh=15000;


//calculation of total electrical energy that can be generated
w=capacity*1e3*9.81;
printf("Wt. of water available= %.2f N \n\n", w);
n_overall=n_penstock*n_turbine*n_generation;
printf("Overall efficiency= %.2f \n\n", n_overall);
energy=w*head*n_overall/1000/3600;
printf("Electrical energy that can be generated= %.1f kWh \n\n",energy); 

//calculation of fall in reservoir level
printf("Level of reservoir= %.3f m \n\n", capacity/area/1e6);
printf("kWh generated in 3 hours=%.2f kWh \n\n", load_kWh*3);
fall= capacity/area/1e6*load_kWh*3/energy*100;
printf("Fall in reservoir level= %.2f cm \n\n",fall);
