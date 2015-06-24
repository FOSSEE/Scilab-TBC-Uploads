clear;
clc;

//Caption:Design a video amplifier using MC1550
//Given Data
Avo=-25;
Vagc=20;//in V
Vcc=6;//in V
hfe=50;
rbb=50;//in ohm
Cs=5;//in pF
Cl=5;//in pF
Ie1=1;//in mA
ft=900;//in MHz
Vt=26;//in V
n=2;//eeta
//re2 = infinity

//Since Vagc=0 , transistor Q2 is in cut off region and collector current of Q1 flows through Q3....So
Ie2=0;
Ie3=1;//in mA
re3 = (n*Vt)/Ie3;//in ohm
disp('ohm',re3,'re3=');
gm = (Ie1)/Vt;//in ohm^-1
disp('ohm^-1',gm,'gm=');
rbe=hfe/gm;
disp('ohm',rbe,'rbe=');
Ce=gm/(2*%pi*ft*10^-6);
disp('pF',Ce,'Ce=');
a3=1;//we make an assumption that alpha is one
s=0;
//Av0 = -((a3*gm)/(re3*rbb))*(1/(((1/rbb)+(1/rbe)+(s*Ce))*((1/re3)+(s*Cs))*((1/Rl)+(s*(Cs+Cl)))))
//From here we can find Rl
k = -((a3*gm)/(re3*rbb))*(1/(((1/rbb)+(1/rbe)+(s*Ce))*((1/re3)+(s*Cs))));
Rl=Avo/k;
disp('ohm',Rl,'Rl=');

//C is in picoFarad so to compensate the whole equation some constants are multiplied
f1 = 1/(2*%pi*Rl*(Cs+Cl)*10^-6);
disp('MHz',f1,'f1=');
f2 = 1/(2*%pi*Ce*10^-6*((rbe*rbb)/(rbe+rbb)));
disp('MHz',f2,'f2=');
f3 = 1/(2*%pi*Cs*re3*10^-6);
disp('MHz',f3,'f3=');


//end