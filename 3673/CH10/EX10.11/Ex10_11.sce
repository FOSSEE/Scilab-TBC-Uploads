//Example 10_11 page no:462
clc;
//given
N=1000;
I=2;
mu=4*%pi*10^-7;
A=0.025*10^-4;
//calculating the mmf
mmf=N*I;
disp(mmf,"the mmf of the cirucit is (in AT)");
//calculating magnetic intensity
H=mmf/I;
disp(H,"the magnetic field intensity is (in AT/m)");
//calculating flux density
B=mu*H;
b=B*1000;//converting to milli weber
disp(b,"the flux density is (in mWb/m^2)");
//calculating total flux
phi=B*A;
disp(phi,"the total flux density is (in Wb)");
