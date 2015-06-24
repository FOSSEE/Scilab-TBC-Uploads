//Example 9.5.1; IS_rms, I1_rms, FPF, PF and HF
clc;
clear;
close;
format('v',7)
//given data :
Vm=230;// in volts
Ia=12;// in A
pi=180;
Av=200;// average load voltage in volts
alfa=acosd(((Av*%pi)/(Vm*sqrt(2)))-1);
Is_rms=Ia*sqrt((pi-alfa)/pi);
disp( "(a)for PAC")
disp(Is_rms,"(1) Is_rms(A) = ")
I1_rms=((2*sqrt(2))/%pi)*Ia*cosd(alfa/2);
disp(I1_rms,"(2) I1_rms(A) = ")
fi=alfa/2;
FPF=cosd(fi);
disp(FPF,"(3) FPF(lag) = ")
CDF=I1_rms/Is_rms;
disp(CDF,"(4) CDF = ")
PF=CDF*FPF;
disp(PF,"(4) PF (lag)= ")
HF=sqrt((1/CDF^2)-1);
disp(HF,"(5) HF = ")
Vm=230;// in volts
Ia=12;// in A
pi=180;
Av=200;// average load voltage in volts
alfa=acosd(((Av*%pi)/(2*Vm*sqrt(2))));
Is_rms=Ia*sqrt((pi-(2*alfa))/pi);
disp( "(b)for SAC")
disp(Is_rms,"(1) Is_rms(A) = ")
I1_rms=((2*sqrt(2))/%pi)*Ia*cosd(alfa);
disp(I1_rms,"(2) I1_rms(A) = ")
fi=0;
FPF=cosd(fi);
disp(FPF,"(3) FPF = ")
CDF=I1_rms/Is_rms;
disp(CDF,"(4) CDF = ")
//in book CDF is mentioned as DF which is wrongly mentioned
PF=CDF*FPF;
disp(PF,"(4) PF (lagging)= ")
HF=(sqrt((1/CDF^2)-1))*100;
disp(HF,"(5) HF (%) = ")

