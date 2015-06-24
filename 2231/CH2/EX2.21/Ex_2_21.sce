//Example 2_21
clc;
clear;close;

//Given data: 
Vs=400;//V
R=10;//ohm
f=50;//Hz

//Solution :
Vm=Vs*sqrt(2)/sqrt(3);//V
Vdc_max=3*sqrt(3)*Vm/2/%pi*(1+cosd(0));//V
//Vdc should be Vdc_max/2
Vdc=Vdc_max*50/100;//V
alfa=acosd(1-Vdc/(3*sqrt(3)*Vm/2/%pi));//degree
disp(alfa,"Firing angle(degree)");
Idc=Vdc/R;//A
disp(Idc,"Average output current(A)");
Vrms=sqrt(3)*Vm*sqrt(3/4/%pi*(%pi-%pi/2+sin(%pi)/2));//V
Irms=Vrms/R;//A
disp(Vrms,"RMS output voltage(V)");
disp(Irms,"RMS output current(A)");
Iavg_thy=Idc/3;//A
disp(Iavg_thy,"Average thyristor current(A)");
Irms_thy=Irms/sqrt(3);//A
disp(Irms_thy,"RMS thyristor current(A)");
Eff=Vdc*Idc/(Vrms*Irms)*100;//%
disp(Eff,"Rectification Efficiency(%)");
Iline_rms=Irms*sqrt(120/180);//A
VA_in=3*Vs*Iline_rms/sqrt(3);//VA
TUF=Vdc*Idc/VA_in;
disp(TUF,"Transformer utilisation factor");
Pin_active=Irms^2*R;//W
pf_in=Pin_active/VA_in;//lagging
disp(pf_in,"Input power factor(lagging)");
//Answer in the book is wrong for some part.
