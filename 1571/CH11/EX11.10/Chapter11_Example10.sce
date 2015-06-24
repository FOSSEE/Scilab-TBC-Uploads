clc
clear

//INPUT
t1=15;//temperature of the one end of the slab in deg.C
t2=45;//temperature of the other end of the slab in deg.C
k=0.3;//thermal conductivity in cgs unit
d=7;//density of the material in gm/cc
cp=1;//specific heat of the material in kj/kg.K
t=5*3600;//time in sec
dt=1/10;//thermometer reading in deg.C

//CALCULATIONS
b=(3.14*d*cp/(t*k))^(0.5);
x=(log((t2-t1)/dt))/b;//distance from which temparature variation can be detected in cm

//OUTPUT
mprintf('the distance from which temparature variation can be detected is %3.1f cm',x)
