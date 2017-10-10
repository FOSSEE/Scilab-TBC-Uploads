//Example 4.7
//Discrete Equivalent.
//------------------------------------------------------------------
xdel(winsid())//close all graphics Windows
clear;
clc;

// Transfer function
s=%s; 
num=[1 11];
den=[1 3]
Us=poly(num,'s','coeff');
Es=poly(den,'s','coeff');
Ds=syslin('c',Us/Es);
sysc=tf2ss(Ds)

//Discretize the system using sampling time Ts=1 and Bilinear Transform
Ts=1;
sysd=cls2dls(sysc,Ts);

//Pulse transfer function
Dd=ss2tf(sysd)
disp(Dd,"Dd=")
disp("Note that, multiply numerator and denomintor each by 7... 
 will give the result as in book.")
//------------------------------------------------------------------
