clc;
clear all;
Lt=0.629e-9;//lettice parameter of KCL
xk=1.264*1e-40;//electronic polarisability of K+ in F m^2
xcl=3.408*1e-40;//electronic polarisability of Cl- in F m^2
xKCL=xk+xcl;//electronic polarisability of KCl in F m^2
n=4;//no of atoms
N=n/(Lt^3);//no of dipoles per m^3
e0=8.854e-12;
er=(N*xKCL/e0)+1;//dielectric constant of KCL
disp('',er,'dielectric constant of KCL is:')
