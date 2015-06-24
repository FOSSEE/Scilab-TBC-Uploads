//To find the the resistance Rl
// example 3-12 in page 58
clc;
// Given data
Iav=1e-3;// Average current through the PMCC = 1 mA
Ip=250e-3;// primary current= 250 mA
Rm=1700;// coil resistance in ohm
Ns=500;// number of secondary turns
Np=4;//number of primary turns
Vf=0.7;//diode forward drop in volts
Rs=20e+3;// Rs=20 k ohm
//calculation
Im=Iav/0.637;//peak current
Em=(Im*(Rs+Rm))+(2*Vf);//secondary peak voltage
Es=Em*0.707;//secondary rms voltage
Irms=1.11*Iav;// RMS meter current
Is=Ip*(Np/Ns);//transformer rms secondary current
Il=Is-Irms;//current through Rl
Rl=Es/Il;
printf("Rl=%.1f K-ohm\n",Rl/1000);
//result
//Rl=28.2 K-ohm