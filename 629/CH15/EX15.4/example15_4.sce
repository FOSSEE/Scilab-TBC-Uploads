clear
clc
//Example 15.4 CALCULATING DISCHARGE AND MANNING’S n USING CHEZY EQUATION
//To find Approx Value
function [A]= approx (V,n)
    A= round(V*10^n)/10^n; //V-Value, n-to what place
    funcprot (0)
endfunction
g=32.2; //[ft/s^2]
l=100; //width[ft]
y=4.3; //depth[ft]
A=l*y //area[ft^2]
//Estimate Rh to be y
Rh=y 
f=0.13; //friction factor
So=0.003; //slope
V=approx(sqrt(8*g*Rh*So/f),2) //velocity[ft/s]
Q=approx(V*A,0) //discharge[cfs]
printf("\nThe discharge in the channel, Q = %.f cfs.\n",Q)
//Manning's n
n=1.49*A*Rh^(2/3)*So^(1/2)/Q 
printf("\nThe numerical value of Mannings n for this channel = %.4f\n",n)