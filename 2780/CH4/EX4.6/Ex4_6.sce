clc
//to calculate thickness of a doubly refracting plate
lambda=5.890*10^-5 //wavelength in cm
muo=1.53 
               //refractive index
mue=1.54
t=lambda/(4*(mue-muo))
disp("thickness of a plate is t="+string(t)+"cm")
