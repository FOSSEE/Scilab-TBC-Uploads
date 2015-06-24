clc;
clear all;
C=5.1*1e-12;//given capacitance
fr=10*1e6;//given resonant frequency
L=2*1e-6;//given L
//part a
Lt=1/(4*%pi*%pi*fr*fr*C);//new inductance
disp(Lt,'new inductancetance for fr=10mhz is=');
//part b
L2=Lt-L;//required Ls
disp(L2,'required series inductance is');



