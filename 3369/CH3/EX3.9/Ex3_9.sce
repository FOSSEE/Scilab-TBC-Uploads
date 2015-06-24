//Chapter 3, Exmaple 9, page 106
//Average separation and volume occupied by one atom
clc
clear
NA = 6.0244*10**23
NoA = NA*0.075 // Number of atoms/cm^3
V = 1/NoA // Average volume occupied by one atom
S = nthroot(V,3) //  Average separation between atoms
printf("\nNumber od atoms per cm^3 = %e ",NoA)
printf("\nAverage vloume occupied by one atom = %e cm^3",V)
printf("\nAverage separation between atoms = %e cm",S)


//Answers may vary due to round off error
