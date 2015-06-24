clc 
clear

//INPUT DATA
w=5.0;//weight of lead ball in lb
cp=0.032;//specific heat of lead in Btu/lbdeg.F
h=50;//height at which ball thrown in feets
v=20;//vertical speed in ft/sec
g=32;//accelararion due to gravity in ft/sec^2

//CALCULATIONS
//half the kinetic energy is converted into heat after instant impact with ground
u=(v^2)+2*g*h
ke=(w/2*(u));//kinetic energy of the ball at ground
T=ke/(2*32*778*w*cp);//rise of temperature in deg.F

//OUTPUT
mprintf('the rise in temperature is %3.2f deg.F',T)
