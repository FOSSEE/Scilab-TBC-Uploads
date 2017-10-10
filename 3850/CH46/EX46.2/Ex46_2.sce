
//To Calculate the Binding Energy of an Alpha Particle
//Example 46.2

clear;

clc;

u=931;//1 Atomic Mass Unit in MeV/c^2

mH=1.007825*u;//Mass of Hydrogen atom in MeV/c^2

mn=1.008665*u;//Mass of Neutron in MeV/c^2

mHe=4.00260*u;//Mass of Helium atom in MeV/c^2

np=2;//Number of protons in Alpha Particle

nn=2;//Number of Neutrons in Alpha Particle

B=(np*mH+nn*mn-mHe);//Binding Energy of an Alpha Particle in MeV

printf("Binding energy of an Alpha particle = %.1f MeV",B);
