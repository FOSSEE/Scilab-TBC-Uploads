// Caption: Finding kVA rating
clear;
close;
clc;
I_h=50000/240;
V_h=2640;
kva=V_h*I_h/1000;
disp(kva,'kVA rating of transformer=')

eff=1-803/(0.8*550000);//from ex 2.4
disp(eff,'efficiency is=')