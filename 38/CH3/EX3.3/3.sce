// Caption: Finding force on the plunger
clear;
close;
clc;
U_o=4*%pi*10^-7;

function [f]=force(N,l,g,i)
  f=-(N^2*U_o*l*i^2/(4*g));
endfunction

f_fld=force(1000,0.1,0.002,10);//force in N

disp(f_fld,'force on the plunger when current=10A');