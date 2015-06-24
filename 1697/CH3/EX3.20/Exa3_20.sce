//Exa 3.20
clc;
clear;
close;
//given data
Gdb=44;//gain in dB
G=10^(Gdb/10);//gain unitless
OmegaB=4*%pi/G;//n steradian
THETA3db=sqrt(4*OmegaB/%pi);//in Radian
disp(THETA3db,"Beamwidth THETA3db in degree : ");
//Note : Answer in the book is not accurate.