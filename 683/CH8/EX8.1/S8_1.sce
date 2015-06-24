// sum 8-1
clc;
clear;
d=5;
D=30;
G=84*(10^3);
Na=15;
//Axial Load W
W=300;
//Spring index C
C=30/5;
//Shear stress Augmentation factor Ks
Ks=((2*C)+1)/(2*C);
//Wahl's factor Kw
Kw=(((4*C)-1)/((4*C)-4))+(0.615/C);
//Curvature correction factor Kc
Kc=Kw/Ks;
//Spring stiffness k
k=(G*(d^4))/(8*(D^3)*Na);
//Axial deflection delta
delta=W/k;

  // printing data in scilab o/p window
printf("Ks is %0.4f ",Ks);
printf("\n Kw is %0.4f ",Kw);
printf("\n Kc is %0.3f ",Kc);
printf("\n The Spring Stiffness is %0.1f N/mm",k);
printf("\n The Axial deflection is %0.3f mm",delta);