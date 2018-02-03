//=====================================================================================
//Chapter 13 example 8

clc;clear all;

//variable declaration
d   = 0.1;       //diameter in m
a   = 33.5*10^-6;     //cross sectional area of iron ring in m^2
Ns   = 220;        //number of turns on secondary coil
Nm   = 320;        //number of turns on magnetising winding 
I    = 10;         //current in A
B    = 2.5*10^-3;      //flux in Wb
n    = 102;           //reading of scale 
g     = 272;         //galvanometer throw


//calculations
l   = (%pi)*d;     //mean length of iron ring in m
H    = (Nm*I)/(l);    //magnetising force with 10 A current 
K    = B/(n);    
//2*phi*Ns  = K*g
phi   = (K*g)/(2*Ns);     //flux in Wb
B1     = phi/(a);    //flux density in Wb/m**2
u0    = 4*%pi*10^-7;
//B  = u0*ur*H
x    = u0*H;
//B    = x*ur
//ur  = B/x
ur    = B1/x;    //relative permeability 

//result
mprintf("relative permeability = %3.1f",ur);

