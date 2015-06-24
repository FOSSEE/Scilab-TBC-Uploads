clc
//to calculate fundemental frequency
Y=7.9*10^10 //Young modulus for quartz in Nm^-2
rho=2.65*10^3 //density of quartz in kg/m^3
//the velocity of longitudinal wave is given by
v=sqrt(Y/rho)  //in m/s
//for fundamental mode of vibration ,thickness is given by lambda/2
lambda=2*0.001 //wavelength in m
nu=v/lambda
disp("the fundamental frequency is nu="+string(nu)+"Hz")
//answer is given wrong in the book ,nu=2730 Hz
