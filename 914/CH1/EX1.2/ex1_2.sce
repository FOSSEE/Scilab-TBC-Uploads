clc;
warning("off");
printf("\n\n example1.2 - pg9");
// given
// the three unknowns are x,y,z
// the three equations are-
// x+y+z=1500
// (1) 0.05*x+0.15*y+0.40*z=1500*0.25
// (2) 0.95*x+0.00*y+0.452*z=1500*0.50
a=[1 1 1;0.05 0.15 0.40;0.95 0 0.452];
d=[1500;1500*0.25;1500*0.50];
ainv=inv(a);
sol=ainv*d;
printf("\n\n the amount of concentrated HNO3 is %fkg\n the amount of concentrated H2SO4 is %fkg\n the amount of waste acids is %fkg",sol(2),sol(1),sol(3));


