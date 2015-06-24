////Ex 13.10
clc;
clear;
close;
format('v',6);
Vout=15;//V
IL=50;//mA
Vin=20;//V
PDmax=1;//W(For LM 723)
Iref=3;//mA(From datasheet)
PD=Vout*(IL+Iref);//mW
disp(PD/1000,"Required PD(W)");
disp(PDmax,"PDmax supplie by LM723(mW)");
disp("PD<PDmax, so we can use it.");
Vref=7.15;//V(For LM 723)
R3=1.5;//kohm(choosen)
R1BYR2=(Vout-Vref)/Vref;
R1=R3*(R1BYR2+1);//ohm
disp(R1,"Resistance R1(kohm)");
R2=R1/R1BYR2;//ohm
disp(R2,"Resistance R2(kohm)");
disp(R3,"Resistance R3(kohm)");
RCL=0.65/(IL/1000);//ohm
disp(RCL,"Resistance RCL(ohm)");
