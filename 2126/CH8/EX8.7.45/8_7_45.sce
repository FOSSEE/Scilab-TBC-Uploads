clc
clear

//Input data
u=1500 //Flight velocity in m/s
eff=0.75 //Propulsive efficiency

//calculation
//Converting relation eff=(2*sig)/(1+sig^2) into 2nd degree polynomial of sig
sig=((2-(sqrt(4-(4*eff*eff))))/(2*eff)) //Jet speed ratio
Cj=u/sig //Jet velocity in m/s

//Output
printf('Jet velocity is %3.2f m/s',Cj)
