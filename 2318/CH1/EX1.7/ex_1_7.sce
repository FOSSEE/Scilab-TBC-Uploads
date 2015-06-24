//Example 1.7://limiting error
clc;
clear;
close;
fse=1;//full scale deflection
vr=150;//range in volts
ev=(fse/100)*vr;//voltas
v1=100;//volts
le100=((ev)/v1)*100;//in percentage
ve=100;//range in mA
ee=(fse/100)*ve;//mA
e1=55;//mA
le50=((ee/e1)*100);//in percentage
ler=le100+le50;//
disp(ler,"limiting error for power is, (%)=")
