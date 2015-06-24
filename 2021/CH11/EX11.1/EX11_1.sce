//Finding of Pressure Difference
//Given
mu=0.09;
spgr=0.8;
rho=800;
D=0.08;
L=15;
//To Find
A=(%pi/4)*D^2;
q=(50/10)*(1/rho);
v=q/A;
p=(128*mu*q*L)/(%pi*D^4);
p1=p/10000;
disp(" Pressure Difference ="+string(p1)+" N/cm^2"); 
