clc
//to calculate difference in deviations 
lambda=5*10^-5    //wavelength of light in cm
eplusd=1/6000         //where eplusd=e+d
theta1=asind(lambda/eplusd)    //for first order spectrum
theta3=asind(3*lambda/eplusd) //for second order spectrum
difference=theta3-theta1
disp("difference in deviations in first and third order spectra is difference ="+string(difference)+"degree")

