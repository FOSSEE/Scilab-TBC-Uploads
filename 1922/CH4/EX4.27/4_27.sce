clc
clear
//Initialization of variables
hc=150 //Btu/lb
he=-115 //Btu/lb
hg=168 //Btu/lb
//calculations
frac=(hg-hc)/(hg-he)
//results
printf("Fraction of solid = %.3f",frac)
