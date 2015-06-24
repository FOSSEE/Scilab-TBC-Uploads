clc
// initialization of variables
clear
// Rod dimensions and material properties
b1=60 //mm
l1=3 //m
l2=1.5 //m
h1=40 //mm
b2=40 //mm
h2=30 //mm
G=77.5 //GPa
T1=750 //Nm
T2=400 //Nm
//calculations
b1=b1*10^-3
h1=h1*10^-3
b2=b2*10^-3
h2=h2*10^-3
G=G*10^9
// for the left portion of the rod
k1l=0.196 
k2l=0.231
// for the right portion of the rod
k1r=0.178
k2r=0.223
T=T1+T2
tau_maxL=T/(k2l*b1*(h1)^2)
tau_maxR=T2/(k2r*b2*(h2)^2)
tau_max=max(tau_maxL,tau_maxR)
J1=b1*h1^3/12+h1*b1^3/12
J2=b2*h2^3/12+h2*b2^3/12
bet=T*l1/(G*J1)+T2*l2/(G*J2)
printf(' The maximum shear stress is = %.1f MPa',tau_max/10^6)
printf('\n twist = %.4f rad',bet)
//wrong answer for twist in the text
