clc
//to calculate thickness of a half wave plate of quartz
lambda=5*10^-5 //wavelength in cm
mue=1.553 
            //refractive index (unitless)
muo=1.544
//for a half plate of positive crystal
t=lambda/(2*(mue-muo))
disp("thickness of a half wave plate of quartz is t="+string(t)+"cm")
