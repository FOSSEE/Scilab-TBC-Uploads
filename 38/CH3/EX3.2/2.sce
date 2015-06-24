// Caption: Finding magnetic stored energy

close;
clc;
syms x d;
constt=0.5*1000^2*4*%pi*10^-7*0.15*0.1*10^2/(2*0.002);

W_fld=constt*(1-x/d);//in joules

disp(W_fld,'magnetic stored energy=');
