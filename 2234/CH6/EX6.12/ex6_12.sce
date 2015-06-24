clc;
dia=1;  //diameter in cm
f=300*10^6;  //frequency in Hz
i=5;  //current in Ampere
dis=10;  //in cm
dim=0.56;  //aperture dimension in cm
r=(dia*10^-2)/2;  //calculating radius in metre
h=(0.25)/(2*(%pi)*r);  //H field
disp(h,"H field in A/metre = ");  //displaying result
disp("For a plane wave the E field is 377 H = 3000V/m");  //displaying
att=75/dim;  //attenuation
disp(att,"Attenuation = ");  //displaying result
disp("Thus, the field is 22.4 V/metre");  //displaying result