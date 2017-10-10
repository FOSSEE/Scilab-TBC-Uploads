clc;
clear;
t=3 //thickness of air cell in cm
delta_myu=0.000230 //difference in pressure
lambda=5.46*10^-5 //wavelength in cm

//calculation
change_in_path=t*delta_myu // change in one way path in cm
n=(2*change_in_path)/lambda
mprintf("The no of fringes passing through the field of view is = %d",n)
