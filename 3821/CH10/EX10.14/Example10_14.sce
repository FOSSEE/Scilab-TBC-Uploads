/////////Chapter 10 Properties Of Steam
///Example 10.14 Page No:197
//// Find Degree of superheat
///Input Data
clc;
clear;
P=7;                 //Absolute pressure in bar
t=200;               //Absolute temperature
ts=165;              //In degree celsius from steam table

//Calculation
dos1=t-ts;            //Degree of superheat in degree celcius

//Output
printf('Degree of superheat=%f degree celsius \n ',dos1);



