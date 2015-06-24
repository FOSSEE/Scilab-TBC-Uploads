clc
//to calculate maximum frequency
h=6.6*10^-34 //planck's constant in J-s
c=3*10^8 //light speed in m/s
Ve=50000 //accelerating potential in V
lambdamin=h*c/Ve //wavelength in m
numax=c/lambdamin
disp("maximum frequency present in the radiation from an X-ray tube is numax="+string(numax)+"Hz")
//answer is given in thec book is incorrect =1.2*10^19 Hz
