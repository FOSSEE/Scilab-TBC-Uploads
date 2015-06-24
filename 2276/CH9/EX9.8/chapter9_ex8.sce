clc
clear

//input
np=350;//number of turn in the primary
lm=0.8;//mean length of core in meters
am=0.006;//magnetic area in square meter
i0=0.8;//no load current in amperes
v=500;//supply voltage in volts
f=50;//frequency of supply in hertz
ur=2000;//relative permeability of the core
u0=1.257*(10^-6);//absolute permeability

//calculations
bm=v/(4.44*am*np*f);//maximum flux density in tesla
im=(bm*i0)/(u0*ur*np*(2^0.5));//magnetizing current in amperes
sinp=im/i0;//sine of no load phase angle
p=v*lm*cos(asin(im/i0));//power loss of core in watts

//output
mprintf('the maximum flux density in the core will be %3.3fT with a magnetizing current of %3.3fA and a core loss of %3.0fW',bm,im,p)
