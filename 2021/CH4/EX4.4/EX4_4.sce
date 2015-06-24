//Finding of Mass,Density,Specific Gravity
//Given
v=2*1*3;
w=3924;
rho=1000;
g=9.81;
wd=rho*g*v;
w1=w+wd;
m=w1/g;
rho1=m/v;
spgr=rho1/rho;
disp("Mass is = "+string(m)+" Kg");
disp("Density is = "+string(rho1)+" Kg/m^3");
disp("Specific Gravity = "+string(spgr)+" No units")
