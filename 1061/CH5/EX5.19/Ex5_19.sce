//Ex:5.19
clc;
clear;
close;
L=40;// length in m
Ny=.75;// in ps/nm
dy=8;// spectral width in nm
t_mat=L*Ny*dy;// chromatic/material dispersion in ps
t_mat1=t_mat/1000;// chromatic/material dispersion in ns
printf("The chromatic/material dispersion =%f ns", t_mat1);