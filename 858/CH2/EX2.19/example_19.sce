clc
clear 
printf("example 2.19 page number 78\n\n")

//to find the molecular formula
C=64.6     //% of carbon
H2=5.2     //% of hydrogen
O2=12.6    //% of oxygen
N2=8.8     //% of nitrogen
Fe=8.8     //% of iron

a=C/12;    //number of carbon molecules
c=8.8/14;   //number of nitrogen molecules
b=H2/2;    //number of hydrogen molecules
d=O2/16;   //number of oxygen molecules
e=Fe/56    //number of iron atoms

cm=243.4/(8.31*293)     //concentration

 molar_mass=63.3/cm;
 
 printf("a = %f, b = %f, c = %f, d = %f, e = %f",a*6.5,b*6.5,c*6.5,d*6.5,e*6.5)
printf("\n\nformula of butyric acid is = C34H33N4O5Fe")

