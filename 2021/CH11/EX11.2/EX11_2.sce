//Finding of Pressure Drop
//Given
mu=0.15;
spgr=.9;
rho=900;
D=.055;
L=325;
R=D/2;
q=.0037;
//To Find
P=(128*mu*q*L)/(%pi*D^4);
p1=P/100;
x=(p1/L)*R;
x1=x*10^4;
disp("Pressure Drop ="+string(x1)+" N/m^2")
