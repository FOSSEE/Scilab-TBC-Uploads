//Computations of the Density

clear;
clc;

printf("\tExample 14.2\n");

printf("\n\tPart A");
Ac=12.01;  //in g/mol  Molecular weight of Carbon
Ah=1.008;  //in g/mol  molecular weight of hydrogen
a=7.41*10^-8;  //in cm
b=4.94*10^-8;  //in cm
c=2.55*10^-8;  //in cm
Na=6.023*10^23;

Vc=a*b*c;
n=2;
A=(2*Ac)+(4*Ah);

density_c=n*A/(Vc*Na);

printf("\nDensity is : %f g/cm^3\n",density_c);

//End