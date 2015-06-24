//Finding of Pressure
//Given
spgr1=0.8;              //specific gravity of liquid
spgr2=13.6;             //specific gravity of mercury 
h1=0.6;                 //height in left limb in meter
h2=0.15;                //height in right limb in meter
g=9.81;                 //gravitaional force in m/s^2
rho1=spgr1*1000;        //density of liquid in Kg/m^3
rho2=spgr2*1000;        //density of mecury  in Kg/m^3
p=10.13;
//To Find
p1=(rho2*g*h2)-(rho1*g*h1);
disp("Pressure at A ="+string(p1)+" N/m^2");
p2=p1/100+p;
disp("Absolute Pressure "+string(p2)+" N/cm^2")
