//Example 5.2, page 107
clc
r1=1.5//in cm
r2=1.5//in cm
d=2//in cm
n=1//in cm
n1=1.60//in cm
n11=1.30//in cm
n_by_f1=(n1-n)/r1
n1_by_f21=(n11-n1)/r2
f1=n/n_by_f1
f11=n1/n_by_f1
f21=n1/n1_by_f21
f211=n11/n1_by_f21
disp("Part a")
printf("\n The focal length f1 is +%f cm",f1)
printf("\n The focal length f11 is +%f cm",f11)
printf("\n The focal length f21 is -%f cm",f21)
printf("\n The focal length f211 is -%f cm",f211)
n_by_f=(n1/f11)+(n11/f211)-((d*n11)/(f11*f211))
f=1/n_by_f
f11=n11/n_by_f
A1_f=(-f)*(1-(d/f21))
A2_f211=f11*(1-(d/f11))
disp("Part b")
printf("\n The primary focal length is %f cm",A1_f)
printf("\n The secondary focal length is %f cm",A2_f211)
A1_h=f*(d/f21)
A2_h11=-f11*(d/f11)
disp("Part c")
printf("\n The primary point is %f cm",A1_h)
printf("\n The secondary point is %f cm",A2_h11)





