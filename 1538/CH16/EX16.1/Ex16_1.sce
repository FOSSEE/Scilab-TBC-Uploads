//example-16.1
//page no- 484
//given
//atomic radiii of gamma-iron having FCC lattice
rFCC=1.26  //A
//atomic radius of alpha-iron having BCC lattica
rBCC=1.24  //A
//as we know that FCC and BCC has effective no of atoms 4 and 2 resp
//so
aBCC=4/sqrt(3)*rBCC  //A
aFCC=2*sqrt(2)*rFCC  //A
//volume of lattice for FCC and BCC
VFCC=(aFCC)^3  //A^3
VBCC=(aBCC)^3  //A^3
//percentage change in volume during phase transformation of gamma-iron to alpha-iron is given by
percent_vol_change=(VFCC/4-VBCC/2)/(VFCC/4)*100
printf("the percentage volume change during phase transformation of gamma-iron to alpha-iron is %f",percent_vol_change)
