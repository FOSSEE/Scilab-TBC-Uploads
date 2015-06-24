// Chapter 1
//Output power in dBW 
//page 18
//Example no 1-8
//Given
clc;
clear;
P=0.200;      //in Watt     
P1=10*log10(P/1);
printf("\n The ordinary power gain %.0f dBW \n",P1);// Result
P=200;      //in mW
P1=10*log10(P/1);
printf("\n The ordinary power gain %.0f dBm \n",P1);// Result


