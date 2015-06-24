//example-18.1
//page no-535
//given
//side of cube
l=20*10^-3  //m
//plank's constant
h=6.626*10^-34   //Js
//mass of electron
m=9.109*10^-31  //kg
// lower energy level
nx1=1
ny1=1
nz1=1
//higher energy level
nx2=2
ny2=1
nz2=1
//energy in the lower level
E1=h^2*(nx1^2+ny1^2+nz1^2)/(8*m*l^2)  //J
//energy in the higher level
E2=h^2*(nx2^2+ny2^2+nz2^2)/(8*m*l^2)  //J
//difference in energies of the two levels
deltaE=E2-E1  //J
printf ("since deltaE is very small, so the assumption that E varies continuously with k, is justified")
