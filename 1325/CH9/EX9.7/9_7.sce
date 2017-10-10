//to find the angular velocity and the angular acceleration of the follower
clc
//given
N=600//rpm
BC=3//in
rmin=1.125//in
rf=39/8//in
OP=rf-rmin
OM1=0.79//in;given
NZ1=2.66//in
w=N*%pi/30
vb=w*OM1
Vang=vb/BC
at=w^2*NZ1
fBC=at/BC
OM2=.52//in
NZ2=3.24//in
af=w*OM2/BC
angf=w^2*NZ2/BC
printf("\nWhen theta = 25 degrees\nangular velocity = %.1f rad/s\nangular acceleration = %.f rad/s^2\nWhen theta = 45 degrees\nangular velocity = %.1f rad/s\nangular acceleration = %.f rad/s^2",Vang,fBC,af,angf)
