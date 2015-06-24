//Estimating the number of turns needed on each commutating pole 
//Chapter 2
//Example 2.26
//page 135
clear;
clc;
disp("Example 2.26")
Bag=0.3;..................................//flux density in the interpole air gap in Wb/m^2
Ia=200000/200;.........................//armature current in amperes
printf("Armature current=%f",Ia)
Z=540;..........................//Number of armature conductors
Zt=540/2;............................//Number armature winding turns 
printf("\nNumber armature winding turns=%f",Zt)
A=6;...............//the winding lap
Ap=Zt/A;........................//Number of armature turns per parallel path
printf("\nNumber of armature turns per parallel path=%f",Ap)
P=6;...............................//pole
Np=((Ia*Ap)/P);
printf("\nNumber of armature ampere turns per pole=%f",Np)
lg=0.01;..............................//inter pole air gap in meters
pi=3.14;
Mu=(4*pi*10^-7)
Nipg=((Bag*lg)/Mu);..........................//Air gap
printf("\nampere turns for the air gap=%f",Nipg)
NipI=(Np+Nipg);................................//total interpole ampere
printf("\nTotal interpole ampere turns=%f",NipI)
Nip=(NipI/Ia);
printf("\nNumber of turns needed on each commutating pole=%f",Nip)