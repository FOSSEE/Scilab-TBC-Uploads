

//example 10.7
clc; funcprot(0);
//exapple 10.7 
// Initialization of Variable
rho=1002;//density of disperant
rho1=2240;//density of kaolin
mu=1.01/1000;//viscosity
g=9.81;
t=600;
h2=0.2;
h1=0.4;
dg=15*10^-6;//particle size to be removed
//calculations
//part 1
d=sqrt(18*mu*h2/g/(rho1-rho)/t);
x=dg/d;
f=h2/h1*(1-x^2);//fraction separated after first decanting
g=f*(1-f);
disp(g,"fraction of particles separated after second decanting");
disp(f+g,"total fraction of particles separated after decanting")
//part 2
h=(1-20/40*(1-x^2))^6;
disp(h,"fraction of particles separated after sixth decanting");
