//Exa 3.3
clc;
clear;
close;
//given data :
le=125;//in m
Irms=5;//in A
lambda=1.25;//in Km
lambda=lambda*10^3;//in m
Rl=10;//in Ohm
//radiation Resistance
Rr=(80*%pi^2)*(le/lambda)^2;//in Ohm
Rr=round(Rr);//in Ohm : approx
disp(Rr,"Radiation resistance in Ohm : ");
//Power radiated
W=(Irms^2)*Rr;//in 
disp(W,"Power radiated in W : ")
//Antenna efficiency 
ETA=Rr/(Rr+Rl)
disp(ETA*100,"Antenna efficiency in % : ");