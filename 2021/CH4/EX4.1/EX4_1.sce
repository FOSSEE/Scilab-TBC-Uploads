//Finding of water displaced and position of centre buoyancy
//Given
l=2;
h=1.5;
b=4;
v=l*b*h;
spgr=0.7;
rho=700;
rho1=1000;
g=9.81;
w=rho*g*v;
//To Find 
wd=w/(rho1*g);
disp("Water Displaced = "+string(wd)+" m^3");
h1=wd/(l*b);
h2=h1/2;
disp("Positin of Centre Buoyancy = "+string(h2)+" m");
