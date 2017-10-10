//Chapter 1
//Example 1.9
//Page 28

clear;
clc;

TF=5;
A=1;


//Calculation of possible range of transfer function
printf("The transfer function will be = %.2f mV per degree celcius \n",((A/100)*(TF)));
printf("Thus the range is %.2f mV per degree celcius to %.2f mV per degree celcius \n",(TF)-((A/100)*(TF)),(TF)+((A/100)*(TF)));
