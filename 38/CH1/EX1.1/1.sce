// Caption: Finding reluctances and flux

clear;
close;
clc;
U_r=70000;
U_o=4*%pi*10^-7;

function [R_c]=reluctance_core(l,A)
  R_c=l/(U_r*U_o*A);
endfunction
disp(reluctance_core(.3,9*10^-4),'Reluctance of the core=')

function [R_g]=reluctance_gap(g,A)
  R_g=g/(U_o*A);
endfunction
disp(reluctance_gap(5*10^-4,9*10^-4),'Reluctance of the gap=')

phy=1.0*9*10^-4;
disp(phy,'flux=')

i=phy*(reluctance_core(.3,9*10^-4)+reluctance_gap(5*10^-4,9*10^-4))/500;
disp(i,'current=')
