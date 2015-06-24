//find dc power supplied to load and efficiency and PIV rating of the diode
clear;
clc;
//soltion
//given
rf=2;//Ω//Dynamic forward resistance
Rs=5;//Ω//resistaqnce of secondary
Rl=25;//Ω//Load resistance
Idc=0.1;//A//dc current to a load
Pdc=Idc^2*Rl;      //dc power
n=(81.2*Rl)/(Rl+rf+Rs);        //efficiency
Im=(%pi*Idc)/2;              //peak value current
Vm=Im*(Rl+rf+Rs);              //peak voltage
Vlm=Vm-Im*(rf+Rs);              //peak voltage across load
PIV=Vm+Vlm;
printf("The dc power supplied to the load is %.2f W\n",Pdc);
printf("Efficiency = %.2f percent\n",n);
printf("The peak inverse voltage is %.2f V",PIV);
