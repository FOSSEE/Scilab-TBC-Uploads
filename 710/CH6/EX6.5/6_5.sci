clc();
clear;
//To determine the thickness of a quarter-wave plate
lambda=589;                              //wavelength of light in nm
mew0=1.54;                              //refractive index for ordinary wave
mewE=1.55;                              //refractive index for extraordinary wave
t=lambda/(4*(mewE-mew0))*10^-3         //thickness in micro meters
printf("The thickness of a quarter-wave plate is %f micro meters",t);
