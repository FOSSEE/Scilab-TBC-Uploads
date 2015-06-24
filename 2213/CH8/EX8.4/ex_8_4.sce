//Example 8.4: speed and voltage
clc;
clear;
close;
n1=700;//rpm
n2=750;//rpm
rm=0.3;//in ohms
v=500;//in volts
ib=50;//amperes
eb1=v-(ib*rm);//in volts
eb2=eb1;//
N=((v-(2*(ib*rm)))/((eb1/n1)+(eb2/n2)));//
pdv1=((eb1/n1)*N)+ib*rm;//in volts
pdv2=((eb1/n2)*N)+ib*rm;//in volts
disp(round(N),"speed in rpm is")
disp(round(pdv1),"PD across machine 1 in volts is")
disp(round(pdv2),"PD across machine 2 in volts is")
