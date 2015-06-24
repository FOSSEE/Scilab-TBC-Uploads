clc;clear;
//Example 17.9

//given data
m=2.86;
Ma1=2;
P01=1;
P1=0.1278;
T1=444.5;
p1=1.002;

//from Table A-2a
R=0.287;//in kJ/kg-K
cp=1.005;//in kJ/kg-K
k=1.4;

//calculations

//part - a
//from Table A-33 at Ma1=2.0
Ma2=0.5774;
P0201=0.7209;//P02/P01
P21=4.5;//P2/P1;
T21=1.6875;//T2/T1
p21=2.6667;//p2/p1
P02=P0201*P01;
P2=P21*P1;
T2=T21*T1;
p2=p21*p1;
disp(P02,'the stagnation pressure in MPa');
disp(P2,'the static pressure in MPa');
disp(T2,'static temperature in K');
disp(p2,'static density in kg/m^3');

//part - b
//s21 = s2 - s1
s21=cp*log(T2/T1)-R*log(P2/P1);
disp(s21,'the entropy change across the shock in kJ/kg-K');

//part - c
V2=Ma2*sqrt(k*R*T2*1000);//factor of 1000 to convert kJ to J
V2=ceil(V2);
disp(V2,'the exit velocity in m/s');

//part - d
disp('flow rate is not affected by presence of shock waves amd remains 2.86 kg/sec')
