//Example 2_17
clc;
clear;close;

//Given data: 
IL=200;//A
VL=400;//V
Vdc=360;//V
variation=10;//%

//Solution :
Vm=VL*sqrt(2)/sqrt(3);//V
//Vdc=3*sqrt(3)/%pi*Vm*cosd(alfa)//V
alfa=acosd(Vdc/(3*sqrt(3)/%pi*Vm))//degree
disp(alfa,"Firing angle in degree");
S=sqrt(3)*VL*IL;//VA
disp(S,"Apparent power(VA)");
P=S*cosd(alfa);//W
disp(P,"Active power(W)");
Q=sqrt(S^2-P^2);//vars
disp(Q,"Rective power(vars)");
Vac1=(1+variation/100)*VL;//V
alfa1=acosd(Vdc/(3*Vac1*sqrt(2)/%pi));//degree
Vac2=(1-variation/100)*VL;//V
alfa2=acosd(Vdc/(3*Vac2*sqrt(2)/%pi));//degree
disp(alfa1,"When variation is +10%, firing angle(degree)");
disp(alfa2,"When variation is -10%, firing angle(degree)");
//Answer in the book is wrong for some part.
