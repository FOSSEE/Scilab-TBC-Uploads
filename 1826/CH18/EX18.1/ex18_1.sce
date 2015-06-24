// Example 18.1, page no-460
clear
clc
atom=4
kci=0.629*10^-9//m
alfk=1.264*10^-40//m^2
alfCl=3.408*10^-40//m^2
eps0=8.854*10^-12
pol=alfk+alfCl
N=atom/kci^3
epsr=(N*pol/eps0)+1
printf("\nThe electronic polarisability for KCL = %.3f *10^-40 F m^2\n",pol*10^40)
printf("\nThe no of Dipoles per m^3 = %.3f * 10^28 atoms m^-3\n",N/10^28)
printf("\nThe dielectric constant of KCL is %.3f",epsr)
