clc 
// Given that
v = 34500 // speed of sound in cm/sec
f = 20 // lower limit of frequency for human hearing ear in Hz
f_ = 20000 // upper limit of frequency for human hearing ear in Hz
// Sample Problem 1 on page no. 8.17
printf("\n # PROBLEM 1 # \n")
printf(" Standard formula used \n")
printf(" V = f*lambda \n \n" )
lambda = v / f
lambda_ = v / f_
printf("\n Wavelength range of the sound wave is %f cm to %f cm.",lambda_,lambda)
