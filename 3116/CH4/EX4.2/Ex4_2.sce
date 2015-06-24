

clc
//given that
R = 1 // let radius of an atom to be unity 
n=4 // no. of atoms for FCC are 4
printf("Example 4.2\n");
a=2*R*sqrt(2) // edge length for FCC
Vc=a^3 //Volume of cube
Vs=n*4*%pi*R^3/3 //Volume of sphere
APF=Vs/Vc //Atomic packing Fraction

printf("\n Atomic packing factor is %.2f",APF)
