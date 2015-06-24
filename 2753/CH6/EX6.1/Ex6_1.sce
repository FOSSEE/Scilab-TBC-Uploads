//Example 6.1: 
clc;
clear;
close;
//given data :
Vgs= [0;0;0.3];//in V
Vds=[5;10;10];//in V
Id=[8;8.2;7.6];//in mA
dVds=Vds(2)-Vds(1);//in V
dId=Id(2)-Id(1);//in mA
rd=(dVds/dId);//in kilo-ohm
format('v',4)
disp(rd,"(i) A.C. Drain resistance is ,(kilo-ohm)=")
dVgs=Vgs(3)-Vgs(2);//in V
dId1=Id(2)-Id(3);//in mA
gm=dId1/dVgs;//in mA/volt
format('v',3)
disp(gm,"(ii) Transconductance is ,(mS)=")
mu=gm*rd;//A/V
format('v',4)
disp(mu,"(iii) Amplification factor is ,=")
//Transconductance and Amplification factor are calculated wrong in the textbook
