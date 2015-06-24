//Exa 8.2
clc;
clear;
close;
//Given data :
photons=6*10^12;//no. of incident photons
lambda=1330;//in nm
pairs=4.8*10^12;//no. of electron hole pairs generated
ETA=pairs/photons;//Quantum efficiency (unitless)
ETA=ETA*100;//Quantum efficiency in %
disp(ETA,"Quantum efficiency in % : ");