//Example 5.8//

cx=0.01;// distance of x
c0=0;////for initially pure A
c=cx-c0
mprintf("c = %f ",c)
a=1;//given
e=a-c
mprintf("\ne = %f ",e)
b=0.9928;//As z= 1.90 erf(z)=0.9928 //Interpolating table 5.1 gives
d=0.99;//Interpolating table 5.1 gives
f=0.9891;//As z=1.80 erf(z)=0.9891 //Interpolating table 5.1 gives
h=1.90;//given
i=1.80;//given
z=-((((b-d)/(b-f))*(h-i))-h)
mprintf("\nz = %f ",z)
D=1*10^-10;//m^2/s// grain boundary
D1=1*10^-14;//m^2/s // volume of bulk grain
t=1;//h //hour //time
t1=3.6*10^3;//s/h //time
x=2*z*sqrt(D*t*t1)
mprintf("\nx = %e m ",x)
a1=10^3;//(As 1milli = 10^-3)
a2=a1*x
mprintf(" = %f mm",a2)
//(b) For comparison
x1=2*z*sqrt(D1*t*t1)
mprintf("\nx1 = %e m ",x1)
b1=10^6;//(As mew = 10^-6)
b2=b1*x1
mprintf(" = %f mew m",b2)
