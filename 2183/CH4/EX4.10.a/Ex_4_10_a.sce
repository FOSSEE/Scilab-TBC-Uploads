// Example 4.10.a;//TOTAL RMS Pulse broadning 
clc;
clear;
close;
M=250;//dispersion parametr picosecond per nano meter per kilometer
Sa=50;//spectral width in nm
NA=0.3;//numerical aperture
n1=1.45;// Core refractibve index
C=2.998*10^8;//Speed of light in m/s
L=1;//length in Km
Sm=M*L*Sa*10^-3;//rms pulse broadning due to material dispersion
Ss=(L*10^3*NA^2)/(4*sqrt(3)*C*n1)*10^9;//Pulse broadning due to intermodal dispersion in ns/km
St=sqrt(Sm^2+Ss^2);// Total broadning
disp(St,"Total broadning ns per km is")
