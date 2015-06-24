
clc
clear
//Input data
od=1.5//Outer diameter in m
id=0.75//Inner diameter in m
h=150//Head in m
P=14000//Power in kW
Ns=120//Specific speed 
vw2=0//Velocity in m/s
a=(11+(20/60))//Angle in degrees
hn=92//Hydraulic efficiency in percent

//Calculations
N=(Ns*h^(5/4))/sqrt(P)//Speed in rpm
vb1=(3.14*od*N)/60//velocity in m/s
vw1=(((hn/100)*9.81*h)/vb1)//velocity in m/s
vf1=(tand(a)*vw1)//Velocity in m/s
vf2=vf1//Velocity in m/s
b1=atand(vf1/(vb1-vw1))//Angle in degrees
b1x=(b1-int(b1))*60//For output
vb2=(vb1/2)//Velocity in m/s
b2=atand(vf1/(vb2-vw2))//Angle in degrees
b2x=(b2-int(b2))*60//For output

//Output
printf('Inlet blade angle is %3.0f degrees %3.0f minutes \n Outlet blade angle is %3.0f degrees %3.0f minute',b1,b1x,b2,b2x)
