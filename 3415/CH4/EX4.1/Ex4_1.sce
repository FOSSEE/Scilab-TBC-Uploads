//fiber optic communications by joseph c. palais
//example 4.1
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
d=1.64//Daimeter of waveguide in um
lambda=0.82//wavelength in um

//to find
dbylambda=d/lambda//d by lambda ratio normalized thickness
neff1=3.594//for TE0 mode from figure 4.5 for calculated normalized thickness
theta1=86.7//for TE0 mode from figure 4.5 for calculated normalized thickness
neff2=3.578//for TE1 mode from figure 4.5 for calculated normalized thickness
theta2=83.7//for TE1 mode from figure 4.5 for calculated normalized thickness
neff3=3.577//for TE2 mode from figure 4.5 for calculated normalized thickness
theta3=81.1//for TE2 mode from figure 4.5 for calculated normalized thickness
mprintf('For TE0 mode \n  neff =%f  theta=%f degree',neff1,theta1)
mprintf(' \nFor TE1 mode \n neff =%f  theta=%f degree',neff2,theta2)
mprintf(' \nFor TE2 mode \n  neff =%f  theta=%f degree',neff3,theta3)
