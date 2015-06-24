//Exa 2.11
clc;
clear;
close;
//given data
d_i=.1;// inner dia in m
r_i=d_i/2;// in m
Ti=473;// in K
T_infinite=293;// in K
k=1;// in W/mK
h=8;// in W/m^2K
rc=k/h;// in m
disp(rc,"Critical radius in meter");
//when
ro=rc;
q_by_L= (Ti-T_infinite)/(log(rc/r_i)/(2*%pi*k)+1/(2*%pi*rc*h));// in W/m
disp(q_by_L,"Heat loss per meter length of pipe in W/m")

// Note: To calculate the value of q_by_L the calculation is wrong in the book so answer in the book is wrong