clc;
clear all;
f = 7e6; // Ultrasonic frquency in hertz
theta = 45;
v = 1.5; // Blood velocity in m/s
U = 1500; // Ultrasonic velocity in m/s
deltaf = (2*f*v*cosd(45))/U
disp('Hz',deltaf,'The frequency of the doppler flowmeter  is')
//Variation in anser as compared to textbook..checked in calculator also.. there is mistake in the book..
