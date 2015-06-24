clc;
//e.g 27.14
AV=300;
Ri=1.5*10**3;
R0=50*10**3;
b=1/15;
AV1=AV/(1+b*AV);
disp(AV1);
Ri1=(1+b*AV)*Ri;//input resistance
disp('Kohm',Ri1*10**-3,"Ri1=");
Ri1=R0/(1+b*AV);//output resistance
disp('kohm',Ri1*10**-3,"Ri1=");
