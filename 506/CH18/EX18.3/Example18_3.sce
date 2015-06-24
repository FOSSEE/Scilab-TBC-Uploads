clear;
clc;

//Caption:SCR Relaxation Oscillator Phase control Circuit
//Given Data
C=0.1;//in microF
V=60;//in V
Vb=32;//in V
Vh=10;//holding voltage in V
Ih=100;//in microA
c=45;//conductance angle in degree
cd = 360 - c;//angle in which capacitor will get charged
td = (cd/360)*(1/60);//in ms

//if the anode voltage is positive,the SCR will fire when vc=32V
vc=32;//in V
//let time constant = t = R*C
//vc-Vh = (V-Vh)(1-exp(-td/t))
t = -td/log(1-((vc-Vh)/(V-Vh)));
disp('sec',t,'time constant = ');
R = t/C;//Resistance in K
disp('K',R*1000,'R=');


//end