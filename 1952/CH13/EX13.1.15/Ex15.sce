// Additional solved numerical questions  , Example(set 1)  15_b_3 , pg 352
a=2.88*10^-8   //lattice constant   (in cm)
d=7200   //density (in  Kg/m^3)
C=8/a^3   // atomic  concentration
n=8      //number of atoms/cell
n1=C/n    //unit cell concentration

//since  density =7200 Kg/m^3
//7200 Kg  =  10^6 cc
//hence 1Kg = (10^6)/7200  cc
N=(n1*10^6)/7200     //number of unit  cells  present in 1 Kg of metal
printf("Number of unit cells present in 1 Kg of metal=")
disp(N)
printf("unit cells")
