//Ex_2_12
clc;
clear;
close;
format('v',7);
//given data : 
Ac=10/10000;//m^2
Ao=5/10000;//m^2(outer limbs)
Lo=25;//cm(outer limbs)
Lc=16;//cm
N=1000;//turns
fic=1.2;//mWb
fio=1.2;//mWb
B=1.2;//Wb/m^2
mmf=750;//AT/m
Bc=fic*10^-3/Ac;//Wb/m^2
Bo=fio*10^-3/Ao;//Wb/m^2
mmf_total=mmf*Lo/100+mmf*Lc/100;//AT/m
I=mmf_total/N;//A
disp(I,"Current required(A)");
