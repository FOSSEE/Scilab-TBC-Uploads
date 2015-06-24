//example 4.4
clc; funcprot(0);
// Initialization of Variable
P=10;//pressure
v2=0.1944;//volume
v1=0.3066;//volume
uf3=631.68;
v3=0.1944;
vg3=0.3928;
vf3=1.0905/1000;
x3=(v3-vf3)/(vg3-vf3);
u3=uf3+x3*(2559.5-uf3);
k1=P*(v2-v1)*100;//k=W/m
k2=u3-2957.3+k1;//k2=Q/m
disp(k2,"Q/m in kJ/kg");
clear()
