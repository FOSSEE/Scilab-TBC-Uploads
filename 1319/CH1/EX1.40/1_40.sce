//To determine parameters to operate the relay

clc;
clear;

N=500;// No of turns
l=400*(10^-3); // Mean Core length
lg=1*(10^-3); // Air Gap length
B=0.8; // Flux density required to operate the relay
m0=4*%pi*(10^-7); // permeability of free space
H=500; // Magentic Field Intensity

mmfc=H*l; // mmf for the core
mmfg=2*lg*B/(m0); // mmf of the air gap

tmmf=mmfc+mmfg; // Total mmf

Iop=tmmf/N; // Operating current for the relay

m=B/H; // Permeability

mr=m/m0; // Relative permeability

// When gap is zero

mmf=mmfc; // Total mmf required

I=mmf/N; // Current when the gap is zero

printf('i) The current required to operate the relay = %g A\n',Iop)
printf('ii)Wrt the Core, The permeability = %g and Relative permeablity = %g \n',m,mr)
printf('iii) The current required when gap is zero = %g A \n',I)

