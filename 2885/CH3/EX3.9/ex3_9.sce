//determine dc voltage across load and peak inverse voltage across each diode
clear;
clc;
//soltion
//given
TR=12/1;//Turn ratio of the transformer
V=220;//V//input voltage of transformer
Vp=sqrt(2)*220//V//peak value of primary voltage
Vm=(1/TR)*Vp;
Vdc=(2*Vm)/%pi;
printf("The dc voltage across load %.1f V\n",Vdc);
printf("Peak inverse voltage (for bridge rectifier) = %.1f V\n",Vm);
printf("Peak inverse voltage (for centre tap rectifier) = %.2f V\n",2*Vm);
