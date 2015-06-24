clc;
//page no 657
//prob no. 17.12
//A radar Tx has power=10kW at freq=9.5GHz & target at 15km with cross sectn=10.2 m2 with gain of antenna is 20dBi
f=9.5*10^9;Pt=10*10^3;c=3*10^8;G_dBi=20;a=10.2;r=15*10^3;
//Determination of received power
wl=c/f;//calculating wavelength
G=10^(G_dBi/10);//Converting to power ratio
Pr=((wl^2)*Pt*(G^2)*a)/(((4*%pi)^3)*(r^4));
disp('W',Pr,'The received power is');