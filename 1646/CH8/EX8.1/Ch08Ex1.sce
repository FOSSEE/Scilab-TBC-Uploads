// Scilab Code Ex8.1: Page-429 (2011)
clc;clear;
d = 8e-004;....// Thickness of the piece of piezoelectric crystal, m
v = 5760;....// Velocity of ultrasonic waves in the piece of piezoelectric crystal, m/s
n = v/(2*d);    // The frequency of the fundamental mode of ultrasonic wave, Hz
printf("\nThe frequency of the fundamental mode of ultrasonic wave = %3.1f MHz", n/1e+006);

4// Result
// The frequency of the fundamental mode of ultrasonic wave = 3.6 MHz 
 