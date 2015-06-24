clc
//to calculate spacing between the slits
lambda=6*10^-5 //wavelength in cm
omegatheta=0.1*%pi/180 //angular width of a fringe in radians
twod=lambda/omegatheta
disp("the spacing between the slits is twod="+string(twod)+"cm")
