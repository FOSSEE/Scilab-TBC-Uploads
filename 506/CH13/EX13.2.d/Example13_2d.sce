clear;
clc;

//Caption:To find parameters of Current seris Feedback Amplifier
//Given Data
Gmf=-1;//Transconductance in mA/V
D=50;//Desensivity
Avf=-4;//Voltage Gain
Rs=1;//in K
hfe=150;
Vt=0.026;//in V

Gm=Gmf*D;

//B=-Re, D = 1+B*Gm = 1-B*Gm
Re=(1-D)/Gm;//in K

Rl=Avf/Gmf;//in K

// Gm= -hfe/(Rs+hie+Re)
hie= -(hfe/Gm)-Rs-Re;
Ri = Rs + hie +Re;
Rif = Ri*D

Ic=(hfe*Vt)/hie;
disp('mA',Ic,'Quiscent Collector Current = ');

//end