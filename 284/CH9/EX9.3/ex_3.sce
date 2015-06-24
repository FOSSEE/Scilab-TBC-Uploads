// Chapter 9_The bipolar transistor
//Caption_Gain factors
//Ex_3//page 373
delta=0.9967     //recombination favtor
T=300
Jro=10^-8
Jso=10^-11
del=1/delta-1
x=del*Jso/Jro
Vbe=-2*0.0259*log(x)
printf('Forward biased BE voltage required to achieve the given delta is %1.3f V',Vbe)