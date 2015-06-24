clc
clear

//input
v=240;//supply voltage in volts
f=50;//supply frequency in hertz
t1=500;//number of primary turns
i0=0.35;//no load current in amperes
p=44;//power loss in watts
l=0.4;//magnetic length of the core in meters
ur=2000;//relative permeability of core
u0=1.257*(10^-6);//absolute permeability 

//calculations
cosp=p/(v*i0);//no load power factor
im=i0*sin(acos(cosp));//magnetizing current in amperes
b=(u0*ur*im*t1)/l;//flux density in tesla

//output
mprintf('the flux density produced in the core will be %3.3f T',b)
