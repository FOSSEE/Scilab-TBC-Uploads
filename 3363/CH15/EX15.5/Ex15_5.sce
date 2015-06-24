//Example 15.5, Page 541
clc
M_He=4.0026033//*u, Mass of helium
M1H1=1.00782525//*u, electron mass
Mon1=1.0086654//*u, neutron mass
Mass=(2*M1H1)+(2*Mon1)
delta_M=(Mass)-M_He
printf("\n The binding energy of helium is  %f  *u",delta_M)