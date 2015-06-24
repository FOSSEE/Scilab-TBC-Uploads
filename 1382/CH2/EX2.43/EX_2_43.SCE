// Example 2.43:(a)quiescent current (b) drift in quiescent current
clc;
clear;
close;
Beta1=50;//gain at 25 degree celsius temperture
Beta2=200;//gain at 75 degree celsius temperture
Rb=1;//base resistance in killo ohms
Re=0.1;//emitter resistance in  ohms
Ico1=0.01;//leakage current at 25 degree celsius temperture in micro ampere
Ico2=0.045;//leakage current at 75 degree celsius temperture in micro ampere
Vbe1=0.7;//base to emitter voltage  25 degree celsius temperture in micro ampere
Vbe2=0.575;//base to emitter voltage  75 degree celsius temperture in micro ampere
dBeta=Beta2-Beta1;//Change in gain
dIco=Ico2-Ico1;//change in leakage current
dVbe=Vbe2-Vbe1;//change in base to emitter voltage
Ib= (1-Vbe1)/(Rb+(1+Beta1)*Re);//Base current in micro ampere
Ic=Beta1*Ib;//Collector current in milli ampere
S=((1+Beta1)*(1+(Rb/Re)))/(1+Beta1+(Rb/Re));//stability factor
S1=-(Beta1/Re*10^-3)/(1+Beta1+(Rb/Re));//stability factor
S2=(S*Ic*10^-3)/(Beta1*(1+Beta1));//stability factor
dIc= ((S*dIco*10^-6)+(S1*dVbe)+(S2*dBeta))*10^3;//change in collector current
Icn= Ic+dIc;//new collector current in milli ampere
disp(Ic,"quiescent current  in milli ampere is")
disp(dIc,"quiescent current drift at temperature 75 degree celsius is in milli ampere")
disp(Icn,"new quiescent current  in milli ampere is")
