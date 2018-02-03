//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

bg=1;                        //flux density of air gap in T
u0=4*3.14*10^-7;             //permiability of free space 
lg=0.1*10^-3;                //length of air gap in m
sf=0.9;                      //stacking factor of M19 steel
lm=100*10^-3;                //length of the steel in m
h=130;                       //flux density in At/m

hg=bg/u0;                    //magnetic field intensity in A/m
fg=hg*lg;                    //reluctance drop or magnetic potential across gap in A
bm=bg/sf;                    //flux density in magnetic material in T
Fm=h*0.1;                      //magnetic potenial of other member in At
AT=Fm+fg;                      //the required ampere turn in At

printf('the required ampere turn in the exciting coil is %2f in At',AT)



