//Calulate the Efficiency of the power plant

//Example 5.2

clc;

clear;

T2=833;  //final temperature in K

T1=311;  //initial temperature in K

e=((T2-T1)*100)/T2;  //Efficiency of the power plant in percent

printf("Efficiency of the power plant = %.0f percent",e);
