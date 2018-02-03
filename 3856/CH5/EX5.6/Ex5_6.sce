
//Calculate the Increase in Entropy at constant pressure

//Example 5.6

clc;

clear;

m=200;  //Mass of water in g

M=18.02;  //Molar mass of water in g mol^-1

n=m/M;  //Number of moles of water present in mol

t1=10;  //Initial temperature of water in degree Celius 

T1=10+273;  //Initial temperature of water in K

t2=20;  //Final temperature of water in degree celcious 

T2=20+273;  //Final temperature of water in K

delCpbar=75.3;  //Molar heat capacity of water at constant pressure in J K^-1

delS=(n*delCpbar)*log(T2/T1);  //Increase in Entropy at constant pressure in J K^-1

printf("Encrease in Entropy = %.1f J K^-1",delS);
