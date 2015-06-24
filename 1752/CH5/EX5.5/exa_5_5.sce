//Exa 5.5
clc;
clear;
close;
//given data
k=.026;// in W/mK
v= 16.8*10^-6;// in m^2/s
miu=2*10^-5;// in kg/ms
Pr=0.708;
V=15;// in m/s
x=2;// in m
A=2*1;// in m^2
Re=V*x/v;
del_t=40-10;// in degree C
// since Re > 3 *10^5, hence turbulent flow at x=2 m length of laminar flow region is x_L then
Re_1=3*10^5;
// Re_1 = 3*10^5 = V*x_L/v
x_L= Re_1*v/V;

// Part (a)
//Nu= h*x_L/k = 0.664*Re_1^(1/2)*Pr^(1/3);
h= 0.664*Re_1^(1/2)*Pr^(1/3)*k/x_L;// in W/m^2
disp(h,"The average heat transfer coefficient over the laminar boundary layer in W/m^2 ");

// Part(b)
//Nu= h*x/k = (0.037*Re^0.8-872)*Pr^(1/3);
h= (0.037*Re^0.8-872)*Pr^(1/3)*k/x;// in W/m^2
disp(h,"The average heat transfer coefficient over entire plate in W/m^2 ");

// Part (c)
q=h*A*del_t;
disp(q,"Total heat transfer rate in watt");

// Note: Calculation of the part(a) in this book is wrong, so answer of the part(a) in the book is wrong
