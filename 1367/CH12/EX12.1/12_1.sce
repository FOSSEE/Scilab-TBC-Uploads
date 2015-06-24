//calculate percentage change in volume
//Ex:12.1
clc;
clear;
close;
n_bcc=1/2;
n_fcc=1/4;
r_fcc=1.26;//in Angstorm
r_bcc=1.24;//in Angstorm
a_bcc=4*r_bcc/sqrt(3);//in Angstorm
a_fcc=2*sqrt(2)*r_fcc;//in Angstorm
v_fcc=a_fcc^3;
v_bcc=a_bcc^3;
v=100*((n_fcc*v_fcc)-(n_bcc*v_bcc))/(n_fcc*v_fcc);
disp(v,"Percentage change in volume = ");
