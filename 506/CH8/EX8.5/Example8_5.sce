clear;
 clc;

//Caption : CE-CC configuration
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
Rs=1;//in K
Rc1=5;//in K

//The Second Stage

Rl = Re2;
Ai2 = -hfc/(1+(hoc*Re2));//Current Gain in @nd Transistor
disp(Ai2,'Ai2=');

Ri2 = hic + (hrc*Ai2*Re2);
disp('K',Ri2,'Ri2=');

Av2 = (Ai2*Re2)/Ri2;//Voltage Gain in 2nd Transistor
disp(Av2,'Av2=');

//The First Stage

Rl1 = (Rc1*Ri2)/(Rc1+Ri2);
disp('K',Rl1,'Rl1=');

Ai1 = -hfe/(1+(hoe*Rl1));//Current Gain in 1st Transistor
disp(Ai1,'Ai1=');

Ri1 = hie + (hre*Ai1*Rl1);
disp('K',Ri1,'Ri1=');

Av1 = (Ai1*Rl1)/Ri1;//Voltage Gain in 1st Transistor
disp(Av1,'Av1=');

disp('The output Admittance of Transistor');
Yo1 = hoe - ((hfe*hre)/(hie+Rs));
disp('K^-1',Yo1,'Yo1=');

Ro1 = 1/Yo1;

//Output Impedence of First Stage
disp('Output Impedence of First Stage');
ro1 = (Ro1*Rc1)/(Ro1+Rc1);
disp('K',ro1,'ro1=');

rs2 = ro1;

Yo2 = hoc - ((hfc*hrc)/(hic+rs2));
disp('K^-1',Yo2,'Yo2=');

A1 = (Ai2*Ai2*Rc1)/(Ri2+Rc1);//Overall Current gain
disp(A1,'A1=');

Av = Av2*Av1;//Overall Voltage Gain
disp(Av,'Voltage Gain = Av=');

Avs = (Av*Ri1)/(Ri1+Rs);//Overall Voltage gain with Source Impedence
disp(Avs,'Overall Voltage gain taking Source Impedence into account = Avs = ');


//End