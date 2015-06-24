//Example 3.34:percentage error and voltmeter readings
clc;
clear;
close;
v=180;//volts
i=2;//amperes
rm2=v/i;//ohms
rv=2000;//ohms
iv=v/rv;//amperes
ir=i-iv;//amperes
r=v/ir;//ohms
per=((rm2-r)/r)*100;//
ra=0.01;//ohms
vr=i*(ra+r);//volts
disp(per,"percentage error is,(%)=")
disp(vr,"voltmeter reading is,(V)=")
