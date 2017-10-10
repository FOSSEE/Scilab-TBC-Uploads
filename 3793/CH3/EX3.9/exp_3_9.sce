clear;
clc;
Hr1y=15.93;
Hyb1=12.65;
Hbr1=15.93;
Hrr1=18.93;
Hyy1=12;
Hbb1=12;
Deq=4;
Cb=(2*%pi*(8.854*10^(-12)));

cb1=log(Deq/.02);
cb2=log(((Hr1y*Hyb1*Hbr1)^(1/3))/((Hrr1*Hyy1*Hbb1)^(1/3)));
Cn=(Cb/(cb1-cb2));

Cln=Cn*100*10^(9);
I=((2*%pi*50*Cln*(10^(-3))*220)/sqrt(3));
mprintf("line capacitance to neutral = %.3f microF\n",Cln);
mprintf("line current = %.3f A",I);
