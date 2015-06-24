// Exa 2.9
clc;
clear;
close;
// given :
epsilon_0=8.854*10^(-12) // permittivity in free space
sigma_1=0 //conductivity of medium 1
sigma_2=0 // conductivity of medium 2
epsilon_r1=1 // region 1 relative permittivity
epsilon_r2=2 // region 2 relative permittivity
epsilon_1=epsilon_r1*epsilon_0 // region 1 permittivity
epsilon_2=epsilon_r2*epsilon_0 // region 2 permittivity
E1=[1 2 3] // Electric field in region 1 in V/m
Et1=[0 2 3] // tangential component of electric field E1
En1=[1 0 0] // normal component of electric field E1
Et2=[0 2 3] // as tangential componenet of electric field E2=tangential component of electric field E1
En2=(epsilon_1/epsilon_2)*En1 // normal component of electric field E2
E2=Et2+En2 // electric field in region 2 in V/m
Dt1=epsilon_0*Et1 // tangential component of electric flux density D1
D2=epsilon_2*E2 // electric flux density in region 2 in C/m^2
disp(E2,"electric field in region 2 in V/m:")
disp(D2,"electric flux density in region 2 in C/m^2:") 
