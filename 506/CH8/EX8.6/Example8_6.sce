clear;
clc;

//Caption:Parameters of CE-CC configuration
//Given Data

hie = 2;//in K
hfe = 50;
hre = 6*(10^-4);
hoe = 25*(10^-3);//in K^-1
hic=2;//in K
hfc=-51;
hrc=1;
hoc=25*(10^-3);///in K^-1
Re2=5;//in K
Rs=5;//in K
Rc1=5;//in K

//For the CC output Stage
disp('For the CC output Stage');
Rl = Re2;
Ai2 = 1+ hfe;//Current gain in 2nd Transistor
disp(Ai2,'Ai2=');
Ri2 = hie+((1+hfe)*Rl);
disp('K',Ri2,'Ri2=');
Av2=1-(hie/Ri2);//voltage gain in 2nd transistor
disp(Av2,'Av2=');

//For the CE input Stage
disp('For the CE input Stage');

Ai1=-hfe;//Current gain in 1st transistor
Ri1 = hie;
disp(Ai1,'Ai1=');
Rl1=(Rc1*Ri2)/(Rc1+Ri2);
disp('K',Rl1,'Rl1=');
Av1=(Ai1*Rl1)/Ri1;//Voltage gain in 1st transistor
disp(Av1,'Av1=');
ro1=Rc1;
Ro2 = (hie+Rs)/(1+hfe);
ro2=(Ro2*Rl)/(Ro2+Rl);
disp('K',ro2,'Effective Source Impedence');

Av = Av1*Av2;//Overall voltage gain
disp(Av,'Overall Voltage Gain=');
Ai = Ai1*Ai2*(Rc1/(Rc1+Ri2));//Overall current Gain
disp(Ai,'Overall Current Gain=');

//End