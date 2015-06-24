clc
clear
//INPUT DATA
r1=0.1258*10^-9//atomic radii of the iron atom in BCC structure in m
r2=0.1292*10^-9//atomic radii of the iron atom in FCC structure in m
T=910//metallic iron changes from BCC to FCC in centigrade

//CALCULATION
a1=((4*r1)/sqrt(3))//lattice constant of BCC structure in m
v1=((a1*a1*a1)/2)//The volume occupied by one BCC atom in m^3
a2=((4*r2)/sqrt(2))//lattice constant of FCC structure in m
v2=((a2*a2*a2)/4)//The volume occupied by one FCC atom in m^3
V=((v1-v2)/v1)*100//The change in volume percentage

//OUTPUT
printf('The change in volume percentage is %3.5f',V)
