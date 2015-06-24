// Example 3.7.2:Vldc,Vn,Vlrms,HF,DF and PF
clc;
clear;
close;
format('v',7)
Vsrms=120;//in volts
alpha=%pi/2;//
vm=sqrt(2)*Vsrms;//
vldc=((sqrt(2)*Vsrms)/(%pi))*(1+cos(alpha));//in volts
vldcm=(2*vm)/(%pi);//in volts
vn=vldc/vldcm;//normalised average output voltage in volts
x=((1/%pi)*((%pi-alpha)+(sin((2*alpha)))/2))^(1/2);//
vlrms=((vm/sqrt(2))*x);//RMS load voltage in volts
Io=1;//assume
Isrms=Io*(1-(alpha/%pi))^(1/2);//in amperes
Is1rms=((2*sqrt(2))*Io*cos(alpha/2))/(%pi);//in amperes
HF=((Isrms/Is1rms)^2-1)^(1/2);//Harmonic Fator is
DF=cos(alpha/2);//Displacement factor
PF=(Is1rms/Isrms)*(DF);//power factor
disp(round(vldc),"average output voltage (Vldc)in volts is")
disp(vn,"Normalised average output voltage (Vn) in volts is")
disp(vlrms,"RMS load voltage (Vlrms) in volts is")
disp(HF*100,"Harmonic factor (HF) in percentage is")
disp(DF*100,"Displacement factor (DF) in percentage is")
disp(PF,"power factor (PF) lagging is")
