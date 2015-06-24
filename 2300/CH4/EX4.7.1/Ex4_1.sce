
//scilab 5.4.1
//windows 7 operating system
//chapter 4:Metal-Semiconductor Contacts
clc
clear
//given
Qm=4.55//Qm=work function of tungsten in eV
X=4.01//X=electron affinity of silicon in eV
eQb=(Qm-X)//eQb=barrier height as seen from the metal
disp("eV",eQb,"eQb=")
a=0.21//a=(Ec-Ef)=forbidden gap in eV
eVbi=eQb-a//eVbi=barrier height from semiconductor side
disp("eV",eVbi,"eVbi=")
Es=11.7*8.854*(10^-12)//Es=permittivity of semiconductor;11.7=dielectric constant of silicon
e=1.6*10^(-19)//e=charge of an electron
Nd=10^22//Nd=donor concentration in m^-3
W=((2*Es*eVbi)/(e*Nd))^(1/2)//W=width of the depletion region
disp("m",W,"W=")
Fm=((e*Nd*W)/Es)//Fm=maximum electric field in V/m
disp("V/m",Fm,"Fm=")
