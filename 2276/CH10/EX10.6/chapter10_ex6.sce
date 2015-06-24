clc
clear

//input
n=3;//number of phases
f=50;//frequency in hertz
w=96*(%pi);//angular velocity in rad/sec

//calculations
ws=(2*%pi*f)-w;//slip speed in rad/sec
s=ws/(2*%pi*f);//slip in per units

//output
mprintf('the slip speed is %3.2f rad/s and the slip is %3.2f p.u.',ws,s)
