clear
clc
//Example 2.3 MODELING A BOARD SLIDING ON A LIQUID LAYER
mu=0.05; //[N.s/m^2]
l=1; //[m]
A=l^2 //area[m^2]
delV=0.02; //ΔV[m]
W=25; //[N]
//Frebody analysis
Ft=W*sind(20) //tangential force[N]
Fs=Ft //shear force[N]
dely=mu*delV*A*10^3/Fs //Δy[mm]
printf("\n The space between board and the tramp = %.3f mm.\n",dely)