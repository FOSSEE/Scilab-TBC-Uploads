// Exa 1.8

clc;
clear all;

// Given data

X= 100; // Range of voltmeter(V)
x= 70; // Measured value on voltmeter(V)
Y= 150; // Range of milliammeter
y= 80; // Measurex  d value on milliammeter
Accu= 0.015; // Accuracy of instruments

// Solution

X_mag= Accu*X; //Magnitude of limiting error for voltmeter
Y_mag= Accu*Y; // Magnitude of limiting error for milliammeter
x_mag= X_mag/x; // limiting error at 70V
y_mag= Y_mag/y; // limiting error at 80mA

disp("Limiting error for the power calculation is the sum of the individual limiting errors involved");
printf(' Therefore, limiting error = %.3f percentage \n',(x_mag+y_mag)*100);
// The answer vary due to round off error
