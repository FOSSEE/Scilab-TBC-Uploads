// Example 4.23.b;//bandwidth length product
clc;
clear;
close;
M=250;//dispersion parametr picosecond per nano meter per kilometer
Sa=50;//spectral width in nm
NA=0.3;//nUMERICAL aPERTURE
n1=1.45;// Core refractibve index
C=2.998*10^8;//Speed of light in m/s
L=1;//length in Km
Sm=M*L*Sa*10^-3;//rms pulse broadning due to material dispersion
Ss=(L*10^3*NA^2)/(4*sqrt(3)*C*n1)*10^9;//Pulse broadning due to intermodal dispersion in ns/Km
St=sqrt(Sm^2+Ss^2);// Total broadning
BL= (0.2/(St*10^-9))*10^-6;// Bandwidth length product in Mega hertz Km
disp(BL,"Bandwidth length product in Mega hertz Km")
