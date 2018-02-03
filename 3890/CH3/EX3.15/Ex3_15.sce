//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.15
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

Q=10;     //power rating in kvA
v1=440;     //primary voltage of transformer in v
v2=110;       //secondary voltage of transformer in v
va1=550;     //primary voltage of autotransformer in v
va2=440;     //primary voltage of autotransformer in v

I1=Q*10^3/v2;
Ia1=Q*10^3/va2;
I2=I1+Ia1;
a2=va1/va2;
pa=va2*I2;
pi=(a2-1)*pa/a2;
pc=pa/a2;

printf('The value of pi=%f pc=%f in VA',pi,pc)
