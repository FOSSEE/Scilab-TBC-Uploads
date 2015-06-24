clc;
//page no 773
//prob no. 20.4.2
//Refer example 20.4.1
n1=1.55;del=0.0258;z=1000;c=3*10^8;z_disp=12.5;
del_graded=(n1*z*del^2)/(8*c);
//Determination of intermodal dispersion
del_total=del_graded*z_disp;
disp('sec',del_total,'the intermodal dispersion is');