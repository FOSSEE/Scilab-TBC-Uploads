// Exa 2.8
clc;
clear;
close;
// given :
mu_0=4*%pi*10^(-7) // permeability in free space
mu_r1=3 // region 1 relative permeability
mu_r2=5 // region 2 relative permeability
mu_1=mu_r1*mu_0 // region 1 permeability
mu_2=mu_r2*mu_0 // region 2 permeability
H1=[4 1.5 -3] // magnetic field in region 1 in A/m
Ht1=[0 1.5 -3] // tangential component of magnetic field H1
Hn1=[4 0 0] // normal component of magnetic field H1
Ht2=[0 1.5 -3] // as tangential componenet of magnetic field H2=tangential component of magnetic field H1
Hn2=(mu_1/mu_2)*Hn1 // normal component of magnetic field H2
H2=Ht2+Hn2 // magnetic field in region 2 in A/m
h2=norm(H2) // magnitude of the magnetic field H2 in A/m
disp(H2,"magnetic field in region 2 in A/m:")
disp(h2,"magnitude of magnetic field in region 2 in A/m:") 
