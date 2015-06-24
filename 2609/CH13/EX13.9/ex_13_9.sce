////Ex 13.9
clc;
clear;
close;
format('v',6);
Vout=6;//V
IL=100;//mA
Vref=7.15;//V(For LM 723)
Iref=1;//mA(Assumed)
R1=(Vref-Vout)/Iref;//kohm
R2=Vout/Iref;//kohm
disp("Design values are : ");
disp(R1,"R1 should be used 1.2kohm. Calculated R1(kohm) is");
disp(R2,"R2 should be used 6.2kohm. Calculated R2(kohm)");
R1=1.2;R2=6.2;//kohm
R3=R1*R2/(R1+R2);//kohm
disp(R3,"Resistance R3(kohm)");
RCL=0.65/(IL/1000);//kohm
disp(RCL,"Resistance RCL(kohm)");
