// Example 4.13.1
clc;
clear;
lamda=1550d-9;
lamda0=1.3d-6;
s0=0.095;
Dt=lamda*s0/4*(1-(lamda0/lamda)^4);     //computing material dispersion
Dt=Dt*10^9;
printf("\nMaterial dispersion at 1550 nm is %.1f ps/nm/km",Dt);
printf("\n\nNOTE - Slight deviation in the answer because of printig mistake\nIn problem they have given lamda0 as 1300 nanometer \nbut while solving they have taken it as 1330 nanometer");
//answer in the book 15.6 ps/nm/km, deviaton due to printing mistake.
