//Exa 3.11
clc;
clear;
close;
//Given data :
//Let Material Dispersion, lambda^2*(d^2n/dlambda^2)=a
a=0.03;//in ns
deltaTau_s=15;//in nm
lambda=1.3;//in um
lambda=1.3*10^3;//in nm
c=3*10^8;//speed of light in m/s
c=3*10^5;//speed of light in Km/s
//Part (a)
Dmat=a/(lambda*c);//sec/nm-Km
Dmat=Dmat*10^12;//ps/nm-Km
disp("Material dispersion coefficient at a wavelength of 1.3 micro meter is "+string(Dmat)+" ps/nm-Km");
//Part (b)
deltaTmat_perKm=deltaTau_s*Dmat;//in ps/km
disp("Rms pulse broadning per Km due to material dispersion is "+string(deltaTmat_perKm)+" ps/km or "+string(deltaTmat_perKm*10^-3)+" ns/km");
//Note : Ans is  not accurate in the book.