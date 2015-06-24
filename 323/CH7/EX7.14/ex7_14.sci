//Chapter 7,Ex7.14,Pg7.30
clc;
Vdc=300
Rl=3000
Vm=Vdc*%pi/2 //For full wave rectifier
printf("\n Vm=%.2f V \n",Vm)
Vrms=Vm/sqrt(2) //RMS value of secondary voltage
Im=Vm/Rl //Peak diode current
printf("\n Im=%.2f A \n",Im)
