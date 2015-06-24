//Exa:1.45
clc;
clear;
close;
d=0.65;//in meters
l=1;//in meters
P_o=12*735.5;//in watts
Eff=0.9;//Efficiency
P_in=P_o/Eff;//in watts
P_L=P_in-P_o;//in watts
m=400;//in kg
C_p=700;//in J/Kg/Celcius
alpha=12;//in watts/m^2/Celcius
S=%pi*d*l;//in m^2
Theta=P_L/(S*alpha);//in Celcius
t=m*C_p/(S*alpha);
disp(Theta,'Final temperatur rise (in degree celcius)=');
disp(ceil(t),'Heating time constant (in seconds)=');