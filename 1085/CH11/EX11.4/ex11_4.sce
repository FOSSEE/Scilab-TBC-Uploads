//Exam:11.4
clc;
clear;
close;
sigma_y1=120;//primary yield strength of polycrystalline material(in MN*m^-2)
sigma_y2=220;//increased yield strength of polycrystalline material(in MN*m^-2)
d_1=0.04*10^(-3);//primary grain diameter(in meter)
d_2=0.01*10^(-3);//grain diameter after decreasing(in meter)
//sigma_y1=sigma_i+K*(d_1)^(-1/2)
//sigma_y2=sigma_i+K*(d_2)^(-1/2)
//putting the values and solving the equation
K=(220-120)/((d_2^(-1/2))-((d_1^(-1/2))));//constant(in MN*m(-3/2))
sigma_i=sigma_y1-K*(d_1)^(-1/2);//in MN*m^-2
d=1/((10^4)*(256/645))^(1/2);//grain diameter for grain size ASTM 9(in mm)
D=d*10^(-3);//grain diameter for grain size ASTM 9(in meter)
sigma_y=sigma_i+K*(D)^(-1/2);//Yield stress for a polycrystalline alloy for grain size ASTM 9(in MN*m^-2)
disp(ceil(sigma_y),'Yield stress for a polycrystalline alloy for grain size ASTM 9(in MN*m^-2)=');