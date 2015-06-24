clc
V=100+0*%i;                     //Assignig values to parametrs
Z1=17.32+10*%i;
V1=34.64-20*%i;
V2=V-V1;
[Ro,Theta]=polar(V2);
[ro,theta]=polar(Z1);
[r,t]=polar(V1);
I=[r,t]/[ro,theta];
[ro1,t1]=polar(I);
Z2=[Ro,Theta]/[ro1,t1];
disp("Ohms",Z2,"Impedance Z2");