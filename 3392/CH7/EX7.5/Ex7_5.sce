clc
// initialization of variables
clear
A=3085.9 //mm^2
Ix=29.94e-6 //m^4
Iy=4.167e-6 //m^4
Ixy=0
ybar=207.64 //mm
tau_max=165e6 //Pa
//calculations
A=A*1e-6
ybar=ybar*1e-3
Mxk=-6.1*cos(%pi/6) // Mx=Mxk*P
Myk=-6.1*sin(%pi/6) //My=Myk*P
// Equation to be followed
// S_zz=Mx*y/Ix-My*x/Iy
// At A x=100 mm  y=-92.36 mm 
x=100e-3
y=-92.36e-3
S_zzA=Mxk*y/Ix-Myk*x/Iy //Sigma_zz=S_zz*P
// At B x=-100 mm  y=-92.36 mm 
x=-100e-3
y=-92.36e-3
S_zzB=Mxk*y/Ix-Myk*x/Iy //Sigma_zz=S_zz*P
// At C x=-3.125 mm  y=207.64 mm 
x=-3.125e-3
y=207.64e-3
S_zzC=Mxk*y/Ix-Myk*x/Iy //Sigma_zz=S_zz*P
// To find P
P=2*tau_max/max(S_zzA,S_zzB,S_zzC)
printf('P = %.2f kN',P/10^3)
