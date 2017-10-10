clc;
//ex2.14;
T=100; //degree celcious
Pdissi=4 //miliwatt
D=Pdissi*(T-75); //D IS Derating value in miliwatt
Pd=(500-D); //W
disp('mW',Pd,"Pd=");
