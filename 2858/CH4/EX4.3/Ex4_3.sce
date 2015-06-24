//example 4.3
clc; funcprot(0);
k=0;//B/L;
c2=30;
Gamma=17.5;
H=1.5;
Df=1.2;
H=1.5;
B=2.0;
Ks=2.5;
phi=40;
pi=%pi;
qu=(1+0.2*k)*5.14*c2+(1+k)*Gamma*H^2*(1+2*Df/H)*Ks*tan(phi*pi/180)/B+Gamma*H;
Qu=qu*B;
disp(Qu,"bearing capacity in kN/m");
disp("there is slight variation due to rounding off error")
//soil 2
Ny=109.4;
Nq=64.2;
Fqs=1;
Fys=1;
qt=Gamma*Df*Nq*Fqs+1/2*Gamma*Ny*Fys*B;
disp(qt,"bearing capacity in kN/m^2");

