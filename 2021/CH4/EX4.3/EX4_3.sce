//Finding of volume and specific gravity
//given
w=490.5;             //In Air in Newton
w1=196.2;            //In Water in Newton
rho=1000;
g=9.81;
rho1=5000;
//To Find 
wd=w-w1;
vd=wd/(rho*g);
rho2=(w/g)/vd;
spgr=rho1/(rho*3);
disp("Volume = "+string(rho2)+" Kg/m^3");
disp("Specific Gravity  is= "+string(spgr)+" No units")
