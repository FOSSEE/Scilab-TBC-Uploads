//Finding of Pressure Difference
//Given
g=9.81;
spgr=0.9;
spgr1=13.6;
rho=1000;
rho1=spgr*1000*g;
zd=0.3;
gd=25;
x=(spgr1/spgr)-1;
x1=((gd*x)/100)+zd;
//To find
pd=x1*rho1;disp(x1);
disp("Pressure Difference ="+string(pd)+" N/m^2");
pd1=pd/10000;
disp("Pressure Difference ="+string(pd1)+" N/cm^2");
