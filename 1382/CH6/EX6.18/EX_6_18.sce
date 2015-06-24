// Example 6.18;//Av,Rif,Avf,Rof
clc;
clear;
close;
Rs=600;//Internal resistance in ohms
Rl=2;//Load resistance in killo ohms'
Rb=40;//base resistance in killo ohms
//H Paramters are
hie=5;//in killo ohms
hre=80;
hfe=80;
RL1=(Rb*Rl)/(Rb+Rl);//load resistance in killo ohms
Av=(-(hfe*(RL1*10^3/hie*10^3)))*10^-6;// Voltage Gain
x=(Rb*10^3/(1-Av));//
Rif= (hie*10^3*x)/(hie*10^3+x)//input resistance with feedback
Avf=(Av*Rif)/(Rif+Rs);// Overall Voltage gain
Rof=((Rb*10^3*(Rs+hie*10^3))/(Rs*hfe))*10^-3;//output resistance with feedback
Rof1=(Rof*Rl)/(Rof+Rl);// output resistance with feedback in killo ohms
disp(Av,"Voltage Gain is")
disp(Rif,"input resistance with feedback in ohms is")
disp(Avf,"Overall Voltage gain is")
disp(Rof1,"output resistance with feedback in killo ohms")


