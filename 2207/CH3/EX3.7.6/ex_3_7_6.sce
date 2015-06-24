// Example 3.7.6:average output voltage,supply rms current ,supply fundamental current current,displacement factor,supply factor and supply harmonic factor
clc;
clear;
close;
format('v',6)
Vsrms=220;//in volts
alpha=%pi/3;//
vm=sqrt(2)*Vsrms;//
vldc=((2*vm)/(%pi))*(cos(alpha));//in volts
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
disp("part (a)")
disp(round(vldc),"average output voltage (Vldc)in volts is")
disp("part (b)")
disp("due to exact 50% duty cycle the rms value of supply current Isrms=Io")
Io=1;//assume
Isrms=Io;//in amperes
Is1rms=((2*sqrt(2))*Io)/(%pi);//in amperes
disp("part (c)")
disp("supply fundamental current is "+string(Is1rms)+" Io ")
disp("part (d)")
DF=cos(alpha);//
disp(DF,"displacement factor is")
disp("part (a)")
SPF=Is1rms*DF;//
disp(SPF,"supply power factor is (lagging)")
disp("part (f)")
HF=(((Isrms/Is1rms)^2)-1)^(1/2);//
disp(HF*100,"supply harmonic factor in percentage is")
