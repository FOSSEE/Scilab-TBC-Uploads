//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

bg=0.001;                  //flux in the air gap in Wb
Am=16*10^-4;               //area of magnetic member in m^2
u0=4*3.14*10^-7;             //permiability of free space 
lm=0.1;                    //length of the steel in m
lg=0.1*10^-3;                //length of air gap in m
sf=0.9;                      //stacking factor of M19 steel
h=130,hm=54;                       //flux density in At/m

rg=lg/(1.1*u0*Am);            //reluctance 
bm=bg/(sf*Am);                 //flux density in magnetic material in T
ua=bm/(u0*hm);                    //amplitude of permeability
rm=lm/(ua*u0*Am);                 //reluctance of magnetic member
NI=bg*(rg+rm);                    //exciting ammpereturns in At

printf('the required ampere turns is %2f',NI)
