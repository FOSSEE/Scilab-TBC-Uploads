clc
//to calculate thickness of quarter wave plate
lambda=5.890*10^-5 //wavelength of light in cm
mue=1.553
              //refractive index
muo=1.544
t=lambda/(4*(mue-muo)) 
disp("thickness of quarter wave plate is t="+string(t)+"cm") 
