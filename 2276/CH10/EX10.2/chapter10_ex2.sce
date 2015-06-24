clc
clear

//input
p=4;//number of poles
n=48;//number of slots
b=0.02;//fulx per pole in weber 
w=50*(%pi);//angular velocity in rad/sec

//calcultions
f=(w*(p/2))/(2*%pi);//frequency in hertz
phim=360/n;//mechanical angle in degrees
phie=phim*(p/2);//electrical angle in degrees
phiE=phie*(%pi/180);//electrical angle in radians
kd=(sin(2*(phiE/2)))/(2*sin(phiE/2));//distribution factor and 2 is taken as we are calculating for 2 coils
e=(p/2)*kd*4.44;//total e.m.f. for two coils in series in volts

//output
mprintf('the total e.m.f. for two coils in series is %3.1f V',e)
