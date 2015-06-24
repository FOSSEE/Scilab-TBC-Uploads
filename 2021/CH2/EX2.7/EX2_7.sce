//Finding of Pressure 
//Given
//Left Limb
h=0.6;
rho=1000;
g=9.81;
//Right Limb
h1=0.45;
spgr1=13.6;
h2=0.30;
spgr2=0.88;
//To Find
P=(h1*spgr1)+(h2*spgr2)-(h);
disp("Pressure is ="+string(P)+" cm of water");
p1=P*rho*g;
disp("Pressure is = "+string(p1)+" N/m^2");
