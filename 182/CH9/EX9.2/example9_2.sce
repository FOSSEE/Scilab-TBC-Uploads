// to find the peak to peak voltage and the time period for the sweep generator circuit in fig 9-7
// example 9-2 in page 243
clc;
// Given Data
R3=4.2e+3; C1=0.25D-6; Vb1=4.9; Vbe=0.7;//resistance in ohm, capacitance in farad and voltages in volt respectively 
UL=2;// UTP,LTP=(+/-)2 V
//Calculation
dV=2*UL;//peak-peak voltage in volt
Ic1=(Vb1-Vbe)/R3;//current in ampere
T=dV*C1/Ic1;// time period in seconds
printf("peak-peak voltage=%d V p-to-p\n",dV);
printf("time period=%d ms",T*1000);
//result
//peak-peak voltage=4 V p-to-p
//time period=1 ms
x=linspace(0,1,100);
y=4*x-2;
plot(x,y);
xlabel('Time period in ms');
ylabel('voltage in V');
set(gca(),"grid",[1 1]);