// Example 4.22;//TOTAL RMS Pulse broadning 
clc;
clear;
close;
M=30;//dispersion parametr picosecond per nano meter per kilometer
Sa=25;//spectral width in nm
NA=0.4;//nUMERICAL aPERTURE
n1=1.48;// Core refractibve index
n2=1.47;//cleadding refrative index
C=2.998*10^8;//Speed of light in m/s
d=n1-n2;
L=1;//length in Km
Sm=M*L*Sa;//rms pulse broadning due to material dispersion
Sg=(L*10^3*n1*d^2)/(20*sqrt(3)*C)*10^12;//Pulse broadning due to intermodal dispersion in Ps/Km
St=sqrt(Sm^2+Sg^2);// Total broadning
disp(St,"Total broadning Ps per Km is")
