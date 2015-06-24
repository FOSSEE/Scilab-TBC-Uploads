// chapter 6
// example 6.33
// Design the 3-phase bridge convertor
// page-375-377
clear;
clc;
// given
E=2.3; // in kV (supply voltage)
n=10; // delta-star transformer ratio
f=50; // in Hz (supply frequency)
Id=90; // in A (load current)
Edc1=500, Edc2=-500; // in V (range of varying DC voltage)
Ls=50; // in uH (commutating inductance per phase)
V_T=1.5; // in V (assumption for voltage drop across SCR as done in the book)
Tc_max=104; // in degree C (assumption for maximum temperature as done in the book)
T_A=25; // in degree C (assumption as done in the book)
theta_CS=0.675; // in dgree C/W (assumption as done in the book)
Pav=43; // in W (assumption  as done in the book)
// calculate
Ls=Ls*1E-6; //changing unit from uH to H
E=E*1E3; //changing unit from kV to V
Edc_red=(3*2*%pi*f*Ls/%pi)*Id;// calculation of reduction in output voltage due to overlap
Edc=Edc1+Edc_red+2*V_T;// calculation of average output voltage
E_L=(E/n)*sqrt(3);// calculation of line rms voltage
// Since Edc=1.35*E_L*cosd(alpha), therefore we get
alpha=acosd(Edc/(1.35*E_L));// calculation of firing angle
E_DRM=E_L*sqrt(2)*V_T;// calculation of voltage ratings of SCR
ERRM=E_DRM;// calculation of voltage ratings of SCR
Iavg=Id/3;// calculation of average output current
Irms=Id/sqrt(3);// calculation of rms current
printf("\nThe average output voltage is \t\tEdc=%.2f V",Edc);
printf("\nThe line rms voltage is \t\tE_L=%.1f V",E_L);
printf("\nThe firing angle is \t\t\t%.1f degree",alpha);
printf("\nThe minimum voltgae rating of SCR are \tE_DRM=E_RRM=%.f V",E_DRM);
printf("\nThe average output current is \t\tIavg=%.f A",Iavg);
printf("\nThe rms current is \t\t\tIrms=%.2f A",Irms);
printf("\n\nTherefore we can select SCRs with rating 900 V and 63 A (rms)");
Edc_2=(Edc2+Edc_red+2*V_T);// calculation of average output voltage in inverting mode. Here minus sign indicates inverting mode
PF=Edc_2/(1.35*E_L);// calculation of cos(alpha) in inverting mode
// since cosd(alpha+u)=cosd(alpha)-(2*%pi*f*Ls*Id*sqrt(3/2)/E_L), therefore we get
alpha_mu=acosd(PF-(2*%pi*f*Ls*Id*sqrt(3/2)/E_L));// calculation of (alpha+mu)
gama=180-alpha_mu;// calculation of gama
t_off=gama/(2*%pi*f*(180/%pi));// calculation of off time
printf("\n\nThe off time is \t t_off=%.3f ms",t_off*1E3);
theta_CA=(Tc_max-T_A)/Pav;
// since theta_CA=theta_CS+theta_SA, therefore we get
theta_SA=theta_CA-theta_CS;
printf("\n\nThe heat sink parameters is \t theta_SA=%.2f degree C/W", theta_SA);
Irms_secondary=sqrt(2/3)*Id;// calculation of rms secondary current
Irms_primary=sqrt(2/3)*Id/n;// calculation of rms primary current
VA_rating=3*E_L*Irms_secondary/sqrt(3);// calculation of tranformer VA rating
I_Lf=(3/%pi)*(2*Id/n)*(1/sqrt(2));// calculation of lin rms fundamental current
I_L=sqrt(2)*Id/n;// calculation of rms current
printf("\n\nThe rms secondary current is \t\t%.2f A",Irms_secondary);
printf("\nThe rms primary current is \t\t%.2f A",Irms_primary);
printf("\nThe tranformer VA rating is \t\t%.1f kVA",VA_rating*1E-3);
printf("\nThe line rms fundamental current is \tI_Lf=%.2f A",I_Lf);
printf("\nThe rms current is \t\t\tI_L=%.2f A",I_L);
DPF=cosd(alpha);// calculation of displacement power factor
DF=I_Lf/I_L;// calculation of distortion factor
PF=DPF*DF; // calculation of supply power factor
Pi=sqrt(3)*E*I_Lf*DPF; // calculation of fundamental input power
Po=Edc1*Id; // calculation of output power
neta=(Po/Pi)*100; // calculation of efficiency
printf("\n\nThe displacement power factor is \tDPF=%.2f",DPF);
printf("\nThe distortion factor is \t\tDF=%.2f",DF);
printf("\nThe power factor is \t\t\tPF=%.2f ",PF);
printf("\nThe efficiency is \t\t\t%.1f percent",neta);
// Note: The answers vary slightly due to precise calculation upto 6 decimal digits.In the book, the calculation is done upto 2 decimal digit