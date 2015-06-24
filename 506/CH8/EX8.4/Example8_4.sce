clear;
clc;

//Caption : Parameters of a Common Emitter Amplifier
//Given Data
hie=1.1;//in K
hre=2.5*(10^-4);
hfe=50;
hoe=25*(10^-3);//in K^-1
r=200;//in K
Rs=10;//in K
Ri=1;//in K
Rl=10;//in K

rl=(r*Rs)/(r+Rs);//in K

Ai = -hfe/(1+(hoe*rl));//Current Gain
disp(Ai,'Ai = ');

Ri = hie + (hre*Ai*rl);
disp('K',Ri,'Ri=');

Av=(Ai*rl)/Ri;//Voltage Gain
disp(Av,'Av = ');

k = r/(1-Av);
ri = (Ri*k)/(Ri+k);
disp('K',ri,'ri = ');

Avs = Av*(ri/(ri+Rs));//Overall voltage Gain taking Source resistance into account
disp(Avs,'Avs = ');

ai = Avs*((ri+Rs)/Rl);
disp(ai,'ai = -I2/I1');

//End