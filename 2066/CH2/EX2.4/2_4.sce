clc
clear
//Initialization of variables
pb=28 //in mercury
d=13.6 //g/cc
gam=62.4
xm=15 //in
xw=10 //in
patm=28 //in
//calculations
pB=-xm/12 *gam/144 *d + xw*gam/144
pair=patm/12 *gam/144 *d - xm/12 *gam/144 *d
//results
printf("The pressure gauge at B indicates a reading of %.2f psi vacuum",-pB)
printf("\n Absolute pressure of Air = %.2f psia",pair)
