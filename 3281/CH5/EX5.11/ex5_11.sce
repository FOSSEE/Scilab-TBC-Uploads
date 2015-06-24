//Page Number: 297
//Example 5.9
clc;
//Given
f=8D+9;//hz
v0=500;//V
l=1.2;//mm
l1=l/1000;//m
rsh=18D+3;//ohm
ebym=1.759D+11;
ee=8.854D-12;

//(i) Repeller voltage
n=1+(3/4);
v11=(ebym*n*n)/(8*(l1^2)*(f^2));
vr=sqrt(v0/v11)-v0;
disp('V',vr,'Repeller voltage:');

//(ii) Required dc current
v2=200;//V
j1x=0.582;
i=v2/(2*rsh*j1x);//A
disp('mA',i*1000,'Required dc current:');

//Answer for repeller voltage is calculated wrong in book
