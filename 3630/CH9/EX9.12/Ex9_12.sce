clc;
R7=5000; //Ohm
RL=10000; //Ohm
rc=(R7*RL)/(R7+RL);//Ohm
re=17.4; //Ohm
Av2=rc/re; 
Av1=53;
AvT=Av1*Av2;
disp('',AvT,"AvT=");//The answers vary due to round off error

