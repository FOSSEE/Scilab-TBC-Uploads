clc
clear
//Initialization of variables
spg=0.93
mu=3.1e-3 //lb-sec/ft^2
gam=62.4
z=50 //m
p1=60 //psia
p2=25 //psia
//calculations
p1g=144*p1
p2g=144*p2 + spg*gam*z
dp=p1g-p2g
//results
if p1g>p2g then
    printf("The flow is in upward direction")
else
    printf("The flow is in downward direction")
end
printf("\n Energy loss= %d ft-lb/ft^3",dp)
