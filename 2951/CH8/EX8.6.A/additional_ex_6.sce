clc;
clear;
p1=1/2;
p2=1/4;
p3=1/8;
p4=1/16;
p5=1/16;// probabilities

H=p1*log2(1/p1)+p2*log2(1/p2)+p3*log2(1/p3)+p4*log2(1/p4)+p5*log2(1/p5);
Bw=4000; //Bandwidth in Hz
R=2*H*Bw ;

disp(R,"Rate of the source ( in bits/s) is");
