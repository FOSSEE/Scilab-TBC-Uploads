clear;
clc;

//Caption:To find Q point
//Given Data
Vcc=22.5//in V
Rc=5.6;//in K
Re=1;//in K
R2=10;//in K
R1=90;//in K
B=55;//beta


V=(R2*Vcc)/(R2+R1);//Thevenin Equivallent Voltage
Rb=(R2*R1)/(R2+R1);//Thevenin Equivallent Resistance
disp('Volts',V,'The equivallent Vbb =');
disp('ohm',Rb,'The equivallent Rb is');

//For base current large compared to reverse saturation current ie Ib>>Ico it follows that Ic=B*Ib

//Applying KVL to the base circuit
//0.65-2.25+Ic+10*Ib=0
disp('As B=55 we have Ic=55*Ib');

//We have   -1.60+Ic+(10/55)*Ic=0
Ic=1.60/(65/55);
Ib=Ic/55;
disp('milli amp',Ic,'Ic=');
disp('micro amp',Ib,'Ib=');

//Applying KVL to the collector circuit yields
//-22.5+6.6*Ic+Ib+Vce

Vce = 22.5-(6.6*1.36)-0.025;
disp('Volts',Vce,'Vce=');

//end