// Scilab Code Ex12.9 : Page-607 (2011)
clc; clear;
n = 50;....// Total number of cycles per sec, Hz
V = 1e-03;....// Volume of the specimen, metre cube
t = 1;....// Time during which the loss occurs, s
A = 0.25e+03;....// Area of B-H loop, joule per metre cube
E = n*V*A*t;    // Energy loss due to hysteresis, J/s
printf("\nThe hystersis loss = %4.1f J/s", E); 

// Result
// The hystersis loss = 12.5 J/s 
