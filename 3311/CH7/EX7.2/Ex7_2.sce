// chapter 7
// example 7.2
// Design dual convertor
// page-432
clear;
clc;
// given
Ea=220; // in V
Ia=30; // in A
N=1500; // in rpm (speed of motor)
Eac=400; // in V (3-phase supply)
f=50; // in Hz (supply frequency)
drop=15; // in percent (drop in the circuit)
// calculate
E_drop=(drop/100)*Ea;// calculation of total drop in the system
Edc_alpha=Ea+E_drop;// calculation of total dc voltage
// since Edc_alpha=1.35*Eac*cosd(alpha), therefore we get
alpha1=acosd(Edc_alpha/(1.35*Eac));// calculation of firing angle
Iac=0.817*Ia;// calculation of AC line current
Pac=sqrt(3)*Eac*Iac;// calculation of AC terminal power
// since Pac=1.35*Pdc, therefore we get
Pdc=Pac/1.35;// calculation of DC average power
I_ripple=Ia/5;// calculation of ripple current
w=2*%pi*f;// calculation of angular velocity
Lc=(2*1.35*Eac/(6*w*I_ripple))*(1/7+1/5);// calculation of current limiting inductance
alpha2=180-alpha1;// calculation of firing angle
PIV=2*sqrt(2)*Eac;// calculation of peak inverse voltage of SCR
I_T=2*sqrt(2)*Iac;// calculation of current rating of SCR
printf("\nThe total drop in the system is \t E_drop=%.f V",E_drop);
printf("\nThe total dc voltage is \t\t Edc_alpha=%.f V",Edc_alpha);
printf("\nThe firing angle is \t\t\t alpha1=%.f degree",alpha1);
printf("\nThe AC line current is \t\t\t Iac=%.2f A",Iac);
printf("\nThe AC terminal power is \t\t Pac=%.2f kW",Pac*1E-3);
printf("\nThe DC average power is \t\t Pdc=%.2f kW",Pdc*1E-3);
printf("\nThe current limiting inductance is \t Lc=%.f mH",Lc*1E3);
printf("\nThe firing angle is \t\t\t alpha2=%.f degree",alpha2);
printf("\nThe peak inverse voltage of SCR is \t PIV=%.f V",PIV);
printf("\nThe current rating of SCR is \t\t I_T=%.f A",I_T);