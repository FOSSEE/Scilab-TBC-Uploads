//chapter 13
//example 13.3
//page 408
clear all;
clc ;
//given
Vbe=0.7;
Ibmax=500;//base current nA
R1max=10^6*Vbe/(10*Ibmax);
printf("\nR1max= %d kohm,use standard value 120 kohm",R1max);
R1max=120;
Rl=4;//load resistance in kohm
Xc2=Rl;
f1=70;//lower cutt off frequency in Hz
c2=floor(100000/(2*%pi*f1*Xc2))/100;
printf("\nc2= %.2f microF,standard value",(c2))
Xc2=R1max/10;
c1=1000/(2*%pi*f1*Xc2)
printf("\nc1= %.2f microF,use standard value 0.2 microF",c1)
