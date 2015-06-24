//Finding of Pressure Intensity
//Given
p=73.575*10^4;       //Pressure in N/mm^2
Patm=76;
rho=1000;             //Density in kg/m^3
spgr=13.6;
g=9.81;                //Gravitational force in m/s^2
//To Find 
//Gauge units
P1=p/(rho*g);
P2=p/(spgr*rho*g);
//Absolute units
P3=(Patm*spgr)/100;
P4=(Patm*spgr*rho*g)/100;
P5=P2/10000;
P6=p+P5;
P7=75+P5;
P8=5.5147+(Patm/100);
disp("Gauge Units ");
disp("Pressure ="+string(P1)+" meter of water");
disp("Pressure ="+string(P2)+" meter of mercury");
disp("Pressure ="+string(P3)+" meter of water");
disp("Pressure ="+string(P5)+" N/cm^2");
disp("Pressure ="+string(P7)+" meter of water");
disp("Pressure ="+string(P8)+" meter of Mercury");
