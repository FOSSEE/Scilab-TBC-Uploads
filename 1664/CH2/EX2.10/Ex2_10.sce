
//Example No.2.10.
// Page No.62.
clc;clear;
w = 632.8*10^(-9);//wavelength -[m]
D = 5;//Distance -[m].
d = 1*10^(-3);//Diameter -[m].
deltheta = (w/d);//Angular Spread.
printf("\nThe angular spread is %3.3e radian",deltheta);
r = (D*(deltheta));
r = (5*(deltheta));//Radius of the spread
printf("\nThe radius of the spread is %3.3e m",r); //Radius of the spread.
As = ((%pi)*r^(2));//Area of the spread
printf("\nThe area of the spread is %3.3e m^2",As);//Area of the spread.

