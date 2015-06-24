clear;
clc;

//Caption:To find parameters of Current series Fwwdback Amplifier
//Given Data
Gmf=-1;//Transconductance in mA/V
D=50;//Desensivity
Avf=-4;//Voltage Gain
Rs=1;//in K
hfe=150;
Vt=0.026;//in V

Gm=Gmf*D;
disp('mA/V',Gm,'Gm=');

//B=-Re, D = 1+B*Gm = 1-B*Gm
Re=(1-D)/Gm;//in K
disp('K',Re,'Re=');

//end