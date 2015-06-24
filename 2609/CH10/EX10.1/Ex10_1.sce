////Ex 10.1
clc;
clear;
close;
format('v',5);
t=0:0.01:5;//sec(Assumed)
Vin=5*sin(2*%pi*t);//V
VCC=15;//V
R2=1;//kohm
R1=6.8;//kohm
VEE=-15;//V
Vsat=13;//V
Vref=R2*VCC/(R1+R2);//V
disp(Vref,"Reference Voltage(V)")
disp(Vsat,"If Vin>Vref , Vout (V):");
disp(-Vsat,"If Vin<Vref , Vout (V):");
