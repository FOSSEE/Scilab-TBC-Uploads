clc;
//e.g 16.1
V1=230;
//a=(N2/N1)
b=(1/10);
V2=V1*b;
disp('V',V2*1,"V2=");
Vm=sqrt(2)*V2;
disp('V',Vm*1,"Vm=");
Vdc=0.318*Vm;
disp('V',Vdc*1,"Vdc=");
PIV=Vm;
disp('V',PIV*1,"PIV=");
