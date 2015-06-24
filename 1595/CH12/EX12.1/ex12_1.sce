//Transmission Lines : example 12-1 : (pg 575)
L=73.75*10^-9;
C=29.5*10^-12;
Z=sqrt(L/C);
x=5280;
z=sqrt((x*L)/(x*C));
printf("\nFor the 1-ft section, \nZ0 = sqrt(L/C) = %.f Ohm",Z);
printf("\nFor the 1-mi section, \nZ0 = %.f Ohm",z);