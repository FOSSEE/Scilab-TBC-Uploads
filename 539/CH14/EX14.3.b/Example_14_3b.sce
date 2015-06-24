//Beverage Shell Life

clear;
clc;

function[A]= approx(V,n)
    A= round(V*10^n)/10^n;
    funcprot(0)
endfunction

printf("\tExample 14.3\n");

P1=400000; // in Pa  Pressure inside the bottle
P2=400;  // in Pa  Pressure outside the bottle
Pm=0.23*10^-13;  //Solubility Coefficient
dx=0.05;  // in cm Thickness of wall

J=approx(-Pm*(P2-P1)/dx,8);

printf("\n\tPart B");
A=500;  //surface area of bottle in cm^2
V_lose=750;  //cm^3 STP

V=J*A;
t=V_lose/V;
time=t/(3600*24);

printf("\nTime to escape is : %.2e sec or %d days\n",t,time);

//End