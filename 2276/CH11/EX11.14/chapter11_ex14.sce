clc
clear

//input
//given h-parameters of a junction transistor
hie=1000;//in ohms
hoe=100*(10^-6);//Sec
hre=0.0005;
hfe=50;
rl=10000;//load resistance in ohms

//calculations
Yt=hoe+(1/rl);
v=(1/((hie*(-Yt/hfe))+hre));//voltage gain and - signifies the 180 degree phase shift
vg=-v;
//output
mprintf('the voltage gain would be %3.0f',vg)
