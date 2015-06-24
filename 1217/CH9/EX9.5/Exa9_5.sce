//Exa 9.5
clc;
clear;
close;
//given data
//for the given IC LM317: 
Iadj=100;//in micro amperes
Vref=1.25;//in volts
R1=240;//in ohms
//we have output equation Vo=Vref(1+R2/R1)+R2*Iadj
R2min=0;//in ohms
R2max=3000;//in ohms
Vomin=Vref*(1+R2min/R1)+R2min*Iadj*10^-6;//in volts
Vomax=Vref*(1+R2max/R1)+R2max*Iadj*10^-6;//in volts
disp(Vomin,"Minimum output voltage(in volts) is : ")
disp(Vomax,"Maximum output voltage(in volts) is : ")