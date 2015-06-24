//Exa 7.4
clc;
clear;
close;
//Given data
l=30;//in cm
l=l*10^-2;//in meter
A=1;//in cm^2
A=A*10^-4;//in meter^2
N=300;//turns of wire
i=0.032;//in Ampere
FI_B=2*10^-6;//in weber
meu_o=4*%pi*10^-7;//permeability of free space in weber/amp-meter
B=FI_B/A;//in weber/meter^2
disp(B,"Flux Density in weber/meter^2 : ");
H=N*i/l;//in amp-turn/meter
disp(H,"magnetic Intensity in amp-turn/meter : ");
meu=B/H;//in weber/Amp-meter
disp(meu,"Permeability in weber/amp-meter :");
meu_r=meu/meu_o;//Relative Permeability
disp(meu_r,"Relative Permeability : ");
//Answer of relative permeability is wrong in the book.