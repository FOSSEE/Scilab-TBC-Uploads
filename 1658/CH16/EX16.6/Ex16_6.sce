clc;
V1=230;
fin=50;
//let a=N1/N2
a=1/4;
V2=V1*a;
Vm=sqrt(2)*V2;
Vdc=0.636*Vm;
disp('V',Vdc*1,"Vdc=");
PIV=Vm;
disp('V',PIV*1,"PIV=");
fout=2*fin;
disp('HZ',fout*1,"fout=");
