//determining rotor running at high slip
//Chapter 4
//Example 4.2
//page 288
clear;
clc;
disp("example 4.2");
f=50;   //frequency
V=400; //voltage supply

p=2;
printf("when P=2, Syhchronous speed,Ns=%d \n",((120*f)/p));
p=4;
printf("when P=2, Syhchronous speed,Ns=%d \n",((120*f)/p));
p=6;
printf("when P=2, Syhchronous speed,Ns=%d \n",((120*f)/p));
p=8;
printf("when P=2, Syhchronous speed,Ns=%d \n",((120*f)/p));
disp("for Nr to be 1440 , Ns will be 1500, thus p=4")
Ns=1500;Nr1=1440;
S1=((Ns-Nr1)/Ns)*100;
printf("slip=%d\n",S1);
disp("for Nr to be 940 , Ns will be 1000, thus p=6")
Ns=1000;Nr2=940;
S2=((Ns-Nr2)/Ns)*100;
printf("slip=%d\n",S2);
if S1>S2 then
    disp("motor running at 1440 rpm is running at higher slip")
elseif S2>S1
    disp("motor running at 940 rpm is running at higher slip")