// calculate the output voltage and sensitivity
clc;
Rt=100;
K=1;
Rb=K*Rt;
ei=10;
disp('When K=1')
eo=[(K*Rt/Rb)/(1+(K*Rt/Rb))]*ei;
disp(eo,'output voltage (V)= ')
Se=(ei*Rb)/[(Rb+K*Rt)^2];
disp(Se,'sensitivity (V/ohm)= ')
K=0.95;
disp('When K=0.95')
eo=[(K*Rt/Rb)/(1+(K*Rt/Rb))]*ei;
disp(eo,'output voltage (V)= ')
Se=(ei*Rb)/[(Rb+K*Rt)^2];
disp(Se,'sensitivity (V/ohm)= ')