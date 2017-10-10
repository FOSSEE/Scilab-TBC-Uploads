// Ex 53 Page 398

clc;clear;close;
// Given
d1=0.10*10**-3;//mm
l1=150*10**-2;//m
i2BYi1=1/3;//current ratio
//(d2/d1)**(3/2)=i2BYi1
d2=(i2BYi1)**(2/3)*d1*10**6;//um
l2=1/2*l1*d1/d2*10**6;//m
printf("filament length = %.1f m",l2)
printf("\n filament diameter = %.f um",d2)
