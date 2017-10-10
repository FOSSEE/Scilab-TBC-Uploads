clc;
clear all;
disp("HT coefficient from tube")
D=0.06;//m diameter of tube
U=12;//m/s
ti=15;//degree C
to=45;//degree C
ts=70;// degree C
k=61.714/100;//W/m.C
cp=4174;//J/kg.K
v=0.805*10^(-6);// m^2/s
rho=995.7;//kg/m^3
Pr=5.42;
ReL=U*D/v
Nu=0.023*(ReL^0.8)*Pr^(1/3)
h=Nu*k/D;
disp("W/m^2.C",h,"heat transfer coefficiet from tube surface h =")
m=rho*%pi/4*D^2*U;// kg/s
Q=m*cp*(to-ti);//W
tb=(ti+to)/2;
disp("W",Q,"The heat transferred Q =")
L=Q/(h*%pi*D*(ts-tb));
disp("m",L,"The length of tube is L =")
