//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 2.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

a1=5*10^-4;a2=10*10^-4;            //area of cross sections in m^2
l1=24*10^-2;l2=8*10^-2;            //mean length in m
ur=500;                //relative permiability of the material
u0=4*3.14*10^-7        //permiabiity of free space

u=ur*u0;               //permiablity in H/m
r1=l1/(u*a1);          //reluctance of material with lenght l1
r2=l2/(u*a2);          //reluctance of material with lenght l2
r_a=r1/2+r2;          //net reluctance of a 200 turn coilin H^-1
r_b=r1*r2/(r1+r2)+r1;   //net reluctance of 100 turn coil in H^-1

printf('the net reluctance of 200 turn coil is %2f in H^-1\n',r_a)
printf('the net reluctance of 100 turn coil is %2f in H^-1\n',r_b)

