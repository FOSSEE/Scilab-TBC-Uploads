//EX3_15 PG-3.41
clc
Esm=100;//peak value of supply voltage
Rf=25;//diode forward voltage
Rl=950;//load resistance
Rt=(2*Rf)+Rl;//total resistance
Im=Esm/Rt;
Idc=2*Im/%pi;
Edc=Idc*Rl;
printf("\n DC output voltage is %f V \n",Edc)
Irms=Im/sqrt(2);//rms value of input current
x=(Irms/Idc)^2-1;
Rf=sqrt(x);//ripple factor;
printf("\n Therefore ripple factor is %.4f \n",Rf)
Pdc=Idc^2*Rl;
Pac=Irms^2*(2*Rf+Rl);//Ac input power
%n=Pdc/Pac*100;//efficiency
printf("\n Therefore efficiency is %.2f %% \n",%n)
disp("Peak value of bridge rectifier=PIV rating of each diode")
PIV=Esm;
printf("\n Therefore PIV rating of each diode is %.2f V",PIV)
//In the book the answer for Edc=57.5985V which is wrong because they have taken 
//Rf=50 ohm instead of 25 ohm as given in the question similarly 
//the efficiency=73.3417% in the book is wrong 
//the correct answer for efficiency is 80.97%
