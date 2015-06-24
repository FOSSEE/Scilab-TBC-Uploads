//Page Number: 193
//Example 4.1
clc;
//Given
a=5;//cm
a1=a/100;//m
b=2;//cm
b1=b/100;//m
c=15;//cm
c1=c/100;//m

//(i) Air filled cavity
m=1;
n=0;
p=1;
c=3D+8; //for air
fr=(1/2)*c*sqrt((m/a1)^2+(n/b1)^2+(p/c1)^2); //hz
disp('Ghz',fr/10^9,'Resonant frequency for an air filled cavity:');

//(ii) Dielctric filled cavity
er=2.56;
fr1=(1/2)*(c/sqrt(er))*sqrt((m/a1)^2+(n/b1)^2+(p/c1)^2);//hz
disp('Ghz',fr1/10^9,'Resonant frequency for dielectric cavity:');
