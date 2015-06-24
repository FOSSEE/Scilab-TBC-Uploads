//Page Number: 300
//Example 5.16
clc;
//Given
f=10D+9;//hz
v0=600;//V
l=0.1;//cm
l1=l/100;//m
bet=0.9;
ebym=1.759D+11;
n=2;
j1x=0.575;//from standard table


//(i) Repeller voltage
vr=((6.744D-6*sqrt(v0)*l1*f)/(n-(1/4)))-v0;//V
disp('V',round(vr),'Repeller voltage:');

//(ii) Bunching parameter
v1=200;//V
x=bet*v1*2*%pi*(n-(1/4))/(2*v0);
disp(x,'Bunching parameter:');

//(iii) Required DC current
rsh=20D+3;//ohm
i=v1/(2*rsh*j1x);//A
disp('mA',i*1000,'Required DC current:');

//(iv) Electronic efficiency
eet=2*x*j1x/(2*%pi*(n-(1/4)));
disp('%',eet*100,'Electronic efficiency:');
