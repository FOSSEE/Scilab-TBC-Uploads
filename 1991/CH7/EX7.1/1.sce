clc
clear
//input
e=1.6*10^-19 //charge of electron
r=0.075*10^-3 // radius of electron
ep=8.85*10^-12 //permittivity of free space
//calculation
v=-e/(4*%pi*ep*r)//electric potential
e=-e/(4*%pi*ep*r*r)//electric field strength
//output
printf("resultant potential is %3.3e V",v)
printf("\n resultant electric field strength %3.3f V/m",e)
