//EXAMPLE 26.29
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
Lit1=8;............//Total iron loss in Kilo Watts
Rsp=25;............//Speed reduced in Percentage
Rasp=1;.............//Initial rated speed in rpm
Lit2=5;...........//Total iron loss in Kilo Watts if speed is reduced

//Total loss W= Wh+We=AN+BN^2
//Wh=Hysteresis loss ; We=Eddy current loss
A=[1 1;0.75 (0.75)^2;];
B=[8;5];
y=A\B;..........................//Wh and We at rated speed in Kilo Watts
y1=round(y*100)/100;............//Roundin of decimal places
disp(y1,"(i).Wh and We at rated speed in Kilo Watts respectively:");

Wh=y1(1)*0.5;.....................//Wh at half speed in Kilo Watts
We=y1(2)*(0.5^2);..................//We at half speed in Kilo Watts
disp(Wh,"(ii).Wh at half speed in Kilo Watts:");
disp(We,"We at half speed in Kilo Watts:");
