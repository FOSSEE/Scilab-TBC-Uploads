clc
//solution
//    initialization of variables
m=10;  // mass of saturated water in kg
 // All the necessary values are taken from table C.2
 // part (a)
 
P=0.001; // Pressure in MPa
vf=0.001; // specific volume of saturated liquid at 0.001 Mpa in Kg/m^3
vg=129.2;//  specific volume of saturated vapour at 0.001 Mpa in Kg/m^3
deltaV=m*(vg-vf)//properties of pure substance 
printf("The Volume change at pressure "+string(P)+" MPa is %.0f m^3 \n",deltaV)

// part (b) 
P=0.26;  // Pressure in MPa
vf=0.0011; //   specific volume of saturated liquid at 0.26 MPa( it is same from at 0.2 and 0.3 MPa upto 4 decimals)
vg=(P-0.2)*(0.6058-0.8857)/(0.3-0.2)+0.8857;  // specific volume of saturated vapour by interpolation of Values at 0.2 MPa and 0.3 MPa
deltaV=m*(vg-vf)
printf(" The Volume change at pressure "+string(P)+" MPa is %.2f m^3 \n",deltaV)

// part (c) 
P=10;  // Pressure in MPa
vf=0.00145;  // specific volume of saturated liquid at 10 MPa
vg=0.01803; //specific volume of saturated vapour at 10 MPa
deltaV=m*(vg-vf)
printf(" The Volume change at pressure "+string(P)+" MPa is %.4f m^3",deltaV)
