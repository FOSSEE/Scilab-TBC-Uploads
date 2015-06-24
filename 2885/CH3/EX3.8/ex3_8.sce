//determine dc current through load and rectification efficiency and peak inverse voltage
clear;
clc;
//soltion
//given
TR=31/2;//Turn ratio of the transformer
rf=20;//Ω//Dynamic forward resistance
Rl=1000;//Ω//Load resistance
Vt=0.66;//V//Threshold voltage of diode
V=220;//V//input voltage of transformer
Vp=sqrt(2)*220//V//peak value of primary voltage
Vm=(1/TR)*Vp;
Im=(Vm-Vt)/(rf+Rl);
Idc=Im/%pi;
n=40.6/(1+rf/Rl);
printf("The dc current through load is %d mA\n",Idc*1000);
printf("The rectification efficiency is %.1f percent\n",n);
printf("Peak inverse voltage =Vm = %.2f V\n",Vm)
