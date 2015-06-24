//Finding of Pressure difference
//Given
P1=10.8*10^4;       //Pressure in N/mm^2
P2=17.16*10^4;
rho=1000;            //Density in kg/m^3
g=9.81;            //Gravitational force in m/s^2
spgr1=1.594;
spgr2=13.6;
spgr3=0.8;
z1=4;                 //height in meter
//To Find
left=P1+((spgr1*rho*g)*z1)+(spgr2*rho*g);
right=((spgr3*rho*g)*1.5)+P2;
h=left/(12*right);
h1=h*100;
disp("Height ="+string(h)+" meter of mercury");
disp("Height ="+string(h1)+" centimeter of mercury");
