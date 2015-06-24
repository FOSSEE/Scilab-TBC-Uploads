clear;
clc;
printf("\t\t\tExample Number 5.10\n\n\n");
// turbulent-boundary-layer thickness   
// illustration5.10
// solution

// we have to use the data from example 5.8 and 5.9
Rel = 1.553*10^6;// from previous example
L = 0.75;// [m] length of plate
// it is a simple matter to insert this value in equations(5-91) and (5-95) along with
x = L;// [m]
// turbulent-boundary-layer thickness are
// part a.  from the leading edge of the plate 
del_a = x*0.381*Rel^(-0.2);// [m] 
// part b   from the transition point at Recrit = 5*10^(5)
del_b = x*0.381*Rel^(-0.2)-10256*Rel^(-1);// [m]
printf("turbulent-boundary-layer thickness at the end of the plate from the leading edge of the plate is %f mm",del_a*1000);
printf("\n\n turbulent-boundary-layer thickness at the end of the plate from the transition point at Re_crit = 5*10^(5) is %f mm",del_b*1000);
 



