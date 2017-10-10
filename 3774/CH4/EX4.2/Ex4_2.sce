// exa 4.2 Pg 104
clc;clear;close;

// Given Data
rBYd=0.1;
DBYd=1.2;
P=3;// kN
Syt=300;//MPa
n=3;// factor of safety
//dimensions of plate
l1=400;//mm
l2=300;//mm
l3=400;//mm


sigma_d=Syt/n;// MPa
Kt=1.65;// factor for circular fillet radius member
Rp=P/2;//kN (bearing reaction due to symmetry)
Mf=Rp*l1;// kN.mm (bending moment at fillet)
Mc=P*(l1+l2+l3)/4;// kN.mm (bending moment at centre)

//Fillet
//sigma_max=Kt*32*Mf/(%pi*d**3)
sigma_max_into_d_cube_1 = Kt*32*Mf*1000/%pi


//Centre
//sigma_max=32*Mc/(%pi*d**3)
sigma_max_into_d_cube_2 = Kt*32*Mf*1000/%pi
sigma_max_into_d_cube=max(sigma_max_into_d_cube_1,sigma_max_into_d_cube_2);// (getting max)

//putting sigma_max=sigma_d
t=(sigma_max_into_d_cube/sigma_d)**(1/3);// mm
printf('\n Diameter of axle = %.1f mm',t)


