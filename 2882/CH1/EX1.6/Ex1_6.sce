//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 17
clear;
clc;

//Given Data
//Fig. 1.16

//Solution
blue=6;
gray=8;
violet=50;
gold=0.05;

C=(blue*10+gray)*10^blue*10^-12;//Capacitance in Farads
C=C*10^6;//Converting from Farads to micro Farads

printf("The value of capacitance is %d uF \n and voltage rating is %d volts and tolerance of ±%d percent.",C,violet,gold*100);
