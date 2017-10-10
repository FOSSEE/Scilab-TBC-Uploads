//Example 5_1
clc();
clear;
//To calculate the number of atoms per meter square of plane
//For (100) Plane
a=2
noofatomspercell=1/4*2*a
noofatomsperunitarea=noofatomspercell/a^2   //units in Terms of R
printf("Number of atoms per unit area of 100 plane %.2f*R^-2",noofatomsperunitarea)
//For (110) Plane
a=2
noofatomspercell=1/4*2*a
noofatomsperunitarea=noofatomspercell/(sqrt(2)*a^2)   //units in Terms of R
printf("\nNumber of atoms per unit area of 110 plane %.2f*R^-2",noofatomsperunitarea)
//For (111) Plane
a=2
noofatomspercell=1/4*2*a
bc=sqrt(2)*a
ad=(sqrt(3)/2)*sqrt(2)*a
area=0.5*bc*ad
noofatomsperunitarea=noofatomspercell/area   //units in Terms of R
printf("\nNumber of atoms per unit area of 110 plane %.2f*R^-2",noofatomsperunitarea)
