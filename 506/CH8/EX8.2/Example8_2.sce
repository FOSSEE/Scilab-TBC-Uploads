clear;
clc;

//Caption:transistor as a Common Emitter Amplifier
//Given Data

Rl=10;//in K
Rs=1;//in K
hie=1.1;//in K
hre=2.5*(10^-4);
hfe=50;
hoe=25*(10^-3);//in K^-1

Ai= -hfe/(1+(hoe*Rl));//Current Gain or Current Amplification
disp(Ai,'Ai=');

Ri = hie + (hre*Rl*Ai);
disp('K',Ri,'Ri=');

Av=(Ai*Rl)/Ri;//Voltage Gain
disp(Av,'Av=');

Avs=(Av*Ri)/(Ri+Rs);//Overall Voltage Gain taking source resistance into account
disp(Avs,'Avs=');

Ais=(Ai*Rs)/(Ri+Rs);//Overall current gain taking source resistance into account
disp(Ais,'Ais=');

Yo=hoe-((hfe*hre)/(hie+Rs));//Admittance
disp('K^-1',Yo,'Yo=');

Zo = 1/Yo;//Impedence
disp('K',Zo,'Zo=');

//end