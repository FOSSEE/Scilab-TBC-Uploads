clc;
clear all;
disp("temperature profile in furnace")
thf=810;// degree C
t1=808;// degree C
t2=777;// degree C
t3=78.5;// degree C
t4=78.4;// degree C
tcf=26;// degree C
La=6.5/100;//m
Lb=12/100;//m
Lc=0.65/100;//m
kA=1.13;// W/(m*C)
efb=0.82;
sigma=5.67*10^(-8);// W/(m^2*K^4) 
disp("i)rate of heat transfer per unit area of furnace wall")
//q=qhf=qA=qB=qC=qcf
q=(t1-t2)/(La/kA);// W/(m^2)
disp("W/m^2",q,"rate of heat transfer per unit area of furnace wall, q = ")
qA=q;// W/(m^2)

disp("ii)Thermal conductivities of block insulation kB and kC")
kB=q*Lb/(t2-t3);// W/(m*C)
disp("W/(m*C)",kB,"Thermal conductivity of block insulation, kB =")

kC=q*Lc/(t3-t4);// W/(m*C)
disp("W/(m*C)",kC,"Thermal conductivity of block insulation, kC =")
 
ho=q/(t4-tcf);
disp("W/(m^2*C)",ho,"Combined convective and radiative heat transfer coefficient on the outside surface =")
qrad=efb*sigma*((thf+273)^4-(t1+273)^4);
disp("W/m^2",qrad,"Heat exchange by radiation = ")
//q=qrad+qconv
qconv=q-qrad
disp("W/(m^2*C)")
hi=qconv/(thf-t1);
disp("W/(m^2*C)",hi,"convectiv heat transfer coefficient for the inside surface of furnace wall hconv =")
