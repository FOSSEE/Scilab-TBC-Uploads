clear;
clc;
//Example 13.1
V1=15;//positive supply voltage
V2=-15;//negative supply voltage
Veb12=0.6;
Vbe11=0.6;
Rs=40;
Iref=(V1-V2-Veb12-Vbe11)/Rs;
printf('\nreference current=%.2f mA\n',Iref)
Ic10=19;
Ic1=Ic10/2;
printf('\nIc1=Ic2=Ic3=Ic4= %.3fmicroA\n',Ic1)
Ic1=Ic1*0.001;//mA
Vbe7=0.6;
Vbe6=0.6;
Ic6=Ic1;
R2=1;
Vc6=Vbe7+Vbe6+Ic6*R2+V2;
printf('\nvoltage at collector of Q6=%.2f V\n',Vc6)
