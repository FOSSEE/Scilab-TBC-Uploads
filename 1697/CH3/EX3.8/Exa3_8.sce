//Exa 3.8
clc;
clear;
close;
//given data :
Rl=20;//in Ohm
Rr=100;//in Ohm
Gp=25;//power gain 
ETA=Rr/(Rr+Rl);//Unitless
D=Gp/ETA;//unitless
disp(D,"Directivity : ")