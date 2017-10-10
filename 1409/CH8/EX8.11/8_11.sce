clc;
//page no 8-51
//Exmaple 8.11
L=20*10^(-6);//in Henry
C=100*10^(-12);//in Farads
Bw=200*10^3;//in Hz
fr=[1/(2*%pi*sqrt(L*C))]*10^(-6);
disp(+'MHz',fr,'Resonant frequency is ');
Q=(fr/Bw)*10^6;
disp(Q,'Q for the tuned circuit is');
R=((2*%pi*fr*L)/Q)*10^6;
disp(+'ohms',R,'Resistance required is ');


