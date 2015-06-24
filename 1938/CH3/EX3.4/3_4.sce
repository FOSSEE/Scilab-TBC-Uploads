clc,clear
printf('Example 3.4\n\n')

W1=9.1  //Tension on tight side
W2=0.8  //Tension on slack side
I=10    //Total_current
V=110   //Supply voltage
R=7.5/100   //Radius of p-ulley in metres
N=1320     //speed in r.p.m
T_sh=(W1-W2)*9.81*R   //9.81 is the accelration due to gravity
omega=(2*%pi*N/60)
P_out=T_sh*omega
P_in=V*I

efficiency=100*P_out/P_in
printf('Full load Efficiency is %.2f percent',efficiency)
