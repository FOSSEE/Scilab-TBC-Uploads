clc
clear

//input
p=6;//number of poles
n=72;//number of slots
n1=10;//conductors per slot
b=0.01;//flux per pole in weber
f=50;//frequency in hertz
phi=170;//pitch of coil in electrical degrees
kf=1.11;//form factor for sinusoidal forms

//calcultions
n2=n/p;//number of slots per pole
n3=n2/3;//number of slots per pole per phase for 3phase system
phim=360/n;//mechanical angle between slots in degrees
phie=phim*(p/2);//electrical angle in degrees
phiE=phie*(%pi/180);//electrical angle in radians
kd=(sin(n3*(phiE/2)))/(n3*sin(phiE/2));//distribution factor 
phis=(180-phi)*(%pi/180);//coil spam factor in radians
kc=cos(phis);//pitch factor in radians
e=2*kd*kc*kf*f*b*((n*n1)/3);//e.m.f. per phase in volts
vl=(3^0.5)*e;//line voltage for star connection in volts

//output
mprintf('the phase and line voltages are %3.0f V and %3.0f V respectively',e,vl)
