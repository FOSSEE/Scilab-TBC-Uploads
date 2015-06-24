//EX3_11 PG-3.38
clc
Rf=0.1;
Idc=10;
Rs=0;
Es=30;//rms value of input voltage
Esm=sqrt(2)*Es;//peak value of the input voltage
Im=Idc*%pi/2;//DC output current
disp("We know that Im=Esm/(2Rf+Rs+Rl) for fullwave rectifier")
Rl=Esm/Im-2*Rf-0;
printf("\n Therefore load resistance is %.1f ohm \n",Rl)
Pdc=Idc^2*Rl;//Dc output power rating
Irms=Im/sqrt(2);//rms value of input current
Pac=Irms^2*(2*Rf+Rs+Rl);//Ac input power
%n=Pdc/Pac*100;//efficiency
printf("\n Therefore efficiency is %.2f %% \n",%n)

