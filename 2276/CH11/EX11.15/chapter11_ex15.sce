clc
clear

//input
//given h-parameters of a junction transistor
hie=1000;//in ohms
hoe=100*(10^-6);//Sec
hre=0.0005;
hfe=50;
cg=30;//current gain

//calculations
yl=(cg*hoe)/(hfe-cg);//load admittance in kilo mho
rl=1/(yl*1000);//load resistance in kilo ohms

//output
mprintf('to give a current gain of 30 the load would have to have a resistance of %3.2f kilo ohms',rl)

