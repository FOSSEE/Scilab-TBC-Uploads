//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

u0=4*3.14*10^-7;        //permeability of free space
f=0.001;                //flux in wb
Am=16*10^-4;            //area in m
Bm=1.1;                 //flux in wb

Bg=f/(Bm*Am);
vol=Bm*Am*10^-4;
w=(Bg^2)*(vol)/(2*u0);

printf('the energy stored is %f J',w)
