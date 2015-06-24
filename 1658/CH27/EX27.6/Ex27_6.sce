clc;
//e.g 27.6
AV1=100;
Vin=50*10**-3;
Vin1=0.6;
Vo=AV1*Vin1;
Av=Vo/Vin;
disp(Av);
beta=((Av/AV1)-1)/Av;
disp('*10^-3 ',beta*10**3,"beta=");
