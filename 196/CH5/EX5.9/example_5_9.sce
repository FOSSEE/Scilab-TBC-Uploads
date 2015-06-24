//Chapter 5
//Example 5-9
//ProbOnPhotoDetectors 
//Page 134,135, Figure 5-9
clear;clc;
//Given 
Rf = 10*10^3 ;//Feedback Resistance
I = 10*10^-6 ; //Current through Photo Detector
//example 5-9(a)
Vo = Rf * I ;//Vo for Dark Condition
printf ( "\n\n Output Voltage for dark Condition = %.4f V ", Vo )
//example 5-9(b)
I1 = 1*10^-3 ; //Current in presence of sunlight
Vo1 = Rf * I1 ; //output voltage in light condition
printf ( "\n\n Output voltage in light condition = %.4f V ", Vo1 )