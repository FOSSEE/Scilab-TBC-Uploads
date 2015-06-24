clc;
clear all;
I=50;//current in amp
B=1.5;//megnetic field in Tesla
t=0.5e-2;//thickness of the slab
d=2e-2;//width of the slab
N=8.4e28;//concentration of electrons
e=1.6e-19;//charge of electron
Vh=B*I/(N*e*d);//hall voltage applied
disp('Volt',Vh,'hall voltage applied is:')
