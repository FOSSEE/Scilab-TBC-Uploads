clc
//to calculate number of lines in one centimeter of the grating
//let E=(e+d)
//formula for grating equation for principal maxima is (e+d)*sin theta=n*lambda
n=2 //order of spectrum
lambda=5*10^-5 //wavelength in cm
E=n*lambda/sin(%pi/6)
number=1/E
disp("number of lines is number="+string(number)+"unitless")
//answer is given wrong in the book ,number of lines=1000
