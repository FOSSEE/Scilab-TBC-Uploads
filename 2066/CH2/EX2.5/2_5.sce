clc
clear
//Initialization of variables
pb=28.5 //in mercury
d=13.6 //g/cc
gam=62.4
xm=10 //in
xw=2 //ft
//calculations
dp= xw*gam/144 - xm/12 *gam/144 + xm/12 *gam/144 *d
//results
printf("Pressure difference = %.2f psi",dp)
if dp>0 then
    printf("\n Pressure at A is greater than that at B")
elseif dp=0
    printf("\n Pressure at both A and B are equal")
else
    printf("\n Pressure at A is less than that at B")
end
