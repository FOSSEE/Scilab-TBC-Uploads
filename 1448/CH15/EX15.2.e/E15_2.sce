clc
//Initialization of variables
a=0.82 //nm
b=0.94 //nm
c=0.75 //nm
h=1
k=2
l=3
//calculations
invd=sqrt(h*h/(a*a) + k*k/(b*b) + l*l/(c*c))
d=1/invd
invd2=sqrt(h*h*4/(a*a) + k*k*4/(b*b) + l*l*4/(c*c))
d2=1/invd2
//results
printf("In case 1, separation = %.2f nm",d)
printf("\n In case 2, separation = %.2f nm",d2)
