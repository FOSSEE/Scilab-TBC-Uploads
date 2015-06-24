//Example 1.9://error
clc;
clear;
close;
v=95;//volts
r=40;//ohms
i=v/r;//amperes
err=-0.2;//error in resistance
err1=(err/r)*100;//percentage error 
evv=0.95;//error in voltage
evv1=(evv/v)*100;//percentage error
x=evv1-err1;//
ei=(x/100)*i;//
disp(i,"current in the circuit is,(A)=")
disp(ei,"error in current is,(A)=")
disp(x,"percentage error in current is,(%)=")

