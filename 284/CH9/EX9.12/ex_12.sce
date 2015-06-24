// Chapter 9_The bipolar transistor
//Caption_Transistor cut off frequency
//Ex_12//page 403
Ie=0.001     //emitter current
Cje=10^-12
xb=0.5*10^-4
vs=10^7
Dn=25
xdc=2.4*10^-4
rc=20
Cu=0.1*10^-12     //B-C junction capacitance
Cs=0.1*10^-12    //collector to substrate capacitance
re=0.0259/Ie
tau_e=re*Cje*10^12   //emitter base junction charging time
tau_b=(xb^2)/(2*Dn) *10^12    //base transit time
tau=xdc/vs*10^12
tau_c=rc*(Cu+Cs)*10^12
tau_ec=(tau_e+tau_b+tau+tau_c)   //total emitter to collector time delay
fT=(10^3)/(2*%pi*tau_ec)
bet=100
fB=fT/bet      //beta cutoff frrequency
printf('Emitter to collector transit time is %1.1f psec and cut off frequency is %1.2f GHz',tau_ec,fT)


