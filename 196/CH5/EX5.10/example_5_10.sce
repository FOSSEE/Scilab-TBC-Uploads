//Chapter 5
//Example 5-10
//ProbOnPhotoDetector 
//Page 134,135, Figure 5-9
clear;clc;
//Given
Rf = 100*10^3 ;//Feedback Resistance
//example 5-10(a)
Il1 = 1*10^-6 ; //Load current 1
Vo1 = Rf * Il1 ; //Output voltage in photo detector
printf ( "\n\n Output Voltage in photo detector for Il1 = %.4f V ",Vo1 )
//example 5-10(b)
Il2 = 50*10^-6 ; // Load  current 2
Vo2 = Rf * Il2 ; //Output Voltage in photo detector
printf ( "\n\n Output Voltage in photo detector for Il2 = %.4f V ",Vo2 ) 