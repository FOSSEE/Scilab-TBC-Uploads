clear;
clc;

//Caption:Gain of second emitter to first basefeedback pair
//Given Data
Rc1=3;//in K
Rc2=0.5;//in K
Re=0.05;//in K
Rs=1.2;//in K
hfe=50;
hie=1.1;//in K
hre=0;
hoe=0;

R=Rs;

//Ai=-Ic2/Is=-(Ic2/Ib2)*(Ib2/Ic1)*(Ic1/Ib1)*(Ib1/Is)
// -Ic2/Ib2 =- hfe = -50
// Ic1/Ib1 = hfe
//Let Ib2/Ic1 = k
Ri2= hie + ((1+hfe)*(Re*R/(Re+R)));
k=-Rc1/(Rc1+Ri2);

r= Rs*(Rs+Re)/(Rs+R+Re);
//Let Ib1/Is = l
l=r/(r+hie);

Ai=(-hfe)*(k)*(hfe)*(l);
disp(Ai,'Ai=');

B=Re/(Re+R);//beta
D=1+(B*Ai);

Aif=Ai/D;
disp(Aif,'Aif=');

Avf=(Aif*Rc2)/Rs;
disp(Avf,'Avf=');

//End