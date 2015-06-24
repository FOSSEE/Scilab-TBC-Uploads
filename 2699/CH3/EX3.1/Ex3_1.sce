//EX3_1 pg-3.14
clc
disp("Refer to the circuit diagram shown in figure-3.7")
Rf=75;//diode forward resistance
Rl=10e3;//load resistance
Rs=10;//transformer secondary resistance
Ep=230;//rms value of primary voltage
N2byN1=1/3;//turns ratio
Es=Ep*N2byN1;//rms value of secondary voltage
Esm=sqrt(2)*Es;//peak value of secondary voltage
Im=Esm/(Rs+Rf+Rl);
Im=Im*1e3;
printf("\n Therefore peak value of current is %.2f mA \n",Im)
Idc=Im/%pi;
printf("\n Average current is %.3f mA \n",Idc)
Irms=Im/2;//for half wave rectifier
printf("\n rms current is %.3f mA \n",Irms)
Idc1=Idc*1e-3;
Edc=Idc1*Rl;
printf("\n DC output voltage is %.2f V \n",Edc)
Pdc=Edc*Idc1;//Dc output power
Irms1=Irms*1e-3;
Pac=Irms1^2*(Rs+Rf+Rl);//AC output power
%n=Pdc/Pac*100;//efficiency
printf("\n Efficiency is %.2f %% \n",%n)
disp("Ripple factor for half wave rectifier is 1.21")
