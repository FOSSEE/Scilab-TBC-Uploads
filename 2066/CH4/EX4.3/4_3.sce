clc
clear
//Initialization of variables
pd=15 //psia
rhod=0.005//slug/ft^3
pi=150 //psia
rhoi=0.03 //slug/ft^3
dz=-25 //ft
vd=1000 //ft/s
vi=100 //ft/s
ud=200 //Btu/slug
ui=250 //Btu/slug
g=32.2 //ft/s^2
J=778
uff=5 //ft/s
Q=50 //Btu/sec
//calculations
pr=pd/rhod*144 - pi/rhoi *144
zr=g*(dz)
vr=(vd^2 -vi^2)/2
ur=(ud-ui)*J
jeh=J*Q*g/uff
gem=pr+zr+vr+ur+jeh
power=gem*uff/g
//results
printf("Power transferred = %d ft-lb/sec",power)
