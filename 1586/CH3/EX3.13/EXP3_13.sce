clc;funcprot(0);//EXAMPLE 3.13
// Initialisation of Variables
r=1;............//Radius of each atom in units
n=8;.........//No. of atoms present in Diamond cubic    Silicon per cell
//CALCULATIONS
v=(4/3)*%pi*r^3;..........// Volume of each atom in Diamond cubic Silicon
a0=(8*r)/sqrt(3);..........//Volume of unit cell in Diamond cubic Silicon
Pf=(n*v)/a0^3;............//Packing factor of Diamond   cubic Silicon
disp(Pf,"Packing factor of Diamond   cubic Silicon:")
