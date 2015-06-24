clc;
Vs=15;
Vz=8.3;
B=100;
R=1.8*10**3;
RL=2*10**3;
Vbe=0.7;
VL=Vz-Vbe;
Vce=Vs-VL;
IR=(Vs-Vz)/R;
IL=VL/RL;
IB=IL/B;
disp('microA',IB*10**6,"IB=");//In question beta is 100 but while solving it is taken as 50 which is wrong
Iz=IR-IB;
disp('mA',Iz*10**3,"Iz=");

