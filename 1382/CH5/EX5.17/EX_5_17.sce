// Example 5.16:frequency response
clc;
clear;
close;
Rg=10;//resistance in mega ohms
Vgs=10;//gate to soure voltage
Igss=10;//current in nano ampere
x= (Vgs/Igss)*1000;//resistance in mega ohms
Rin= ((Rg*x)/(Rg+x));//input resistance in mega ohms
C1=0.001;//capacitance in micro farad
fc= (1/(2*%pi*Rin*10^6*C1*10^-6));//input critical frequency of the RC network
Rd=1.8;//drain resistance in killo ohms
Rl=18;//load resistance in killo ohms
C2=1;//Capacitance in micro farad
fc1=(1/(2*%pi*(Rd+Rl)*10^3*C2*10^-6));//output critical frequency of the RC network
disp(fc,"input critical frequency of the RC network in hertz")
disp(fc1,"input critical frequency of the RC network in hertz")
