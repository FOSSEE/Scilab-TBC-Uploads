//Chapter7,Example 7.18,Pg 7.32
clc;
Vrms=20 //Root mean square voltage
Rl=500 //Load resistance in ohms
Rf=20 //diode forward resistance
Vm=sqrt(2)*Vrms
printf("\n Vm=%.2f V \n",Vm)
Im=Vm/(Rf+Rl)
printf("\n Im=%.5f A \n",Im)
Idc=2*Im/%pi
printf("\n Idc=%.2f mA \n",Idc*10^3)
Vdc=(2*Vm/%pi)-Idc*Rf
printf("\n Vdc=%.2f V \n",Vdc)
Irms=Im/sqrt(2)
printf("\n Irms=%.2f mA \n",Irms*10^3)
Pi=(Irms^2)*(Rf+Rl)
printf("\n Input power=%.3f W \n",Pi)
r=sqrt(((Irms/Idc)^2)-1)
printf("\n Ripple factor=%.3f \n",r)
vcd=Idc*Rf
printf("\n Voltage across conducting diode=%.4f V \n",vcd)
disp("Voltage across non conducting diode=20V")
