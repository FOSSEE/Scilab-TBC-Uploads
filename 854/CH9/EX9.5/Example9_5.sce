//clear//
//Caption: Program to find Magnetic Susceptibility, H,Magentization M
//Example9.5
//page 279
clc;
ur = 50; //relative permeability of ferrite material
u0 = 4*%pi*1e-07; //free space permeability in H/m
chim = ur-1; //magnetic susceptibility
B = 0.05; //magnetic flux density in tesla
u = u0*ur;
H = B/u; //magnetic field intensity in A/m
M = chim*ceil(H); //magnetization in A/m
disp(chim,'chim =')
disp(H,'H =')
disp(M,'M = ')
//Reuslt
//chim = 49.  
//H =   795.77472  
//M =   39004.  
