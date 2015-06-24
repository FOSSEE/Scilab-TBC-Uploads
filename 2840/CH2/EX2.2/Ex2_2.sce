clc;
//L2-L1=10*log10(I2/I1)
//so , we can write that 
L2=40  //i dB
L1=10 //in dB 
//where L1 and L2 are intensity level of two waves of same frequency
L=L2-L1;
//let I2/I1=I
I=10^(L/10);
//let a2/a1=a
a=sqrt(I);//Ratio of their amplitudes 
disp(a,'Ratio of their amplitudes = ')
