//Example 7_6
clc();
clear;
//To calculate the numerical aperture,acceptance angle,critical angle,velocity of the light in core and cladding
n1=1.5
delta=1.8*10^-2
NA=n1*sqrt(2*delta)
printf("Numerical apperture is NA=%.3f\n",NA)
ia=asin(NA)*180/%pi             //units in degrees
printf("Angle of acceptance is ia=%.2f Degrees\n",ia)
n2=0.982*n1
n2_n1=0.982
ic=asin(n2_n1)*180/%pi             //units in degrees
printf("Critical angle is ic=%.2f Degrees\n",ic)
c=3*10^8
vc=c/n1
printf("Velocity of light in core is vc=")
disp(vc)
vcc=c/n2
printf("Velocity of light in cladding is vcc=")
disp(vcc)
