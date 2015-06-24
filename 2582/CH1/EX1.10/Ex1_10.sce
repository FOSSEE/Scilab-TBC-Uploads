//Ex 1.10
clc;clear;close;
IREF=2;//mA
IO=IREF;//mA
VA2=90;//V
Vo1=1;//V
Vo2=10;//V
ro2=VA2/IO;//kohm
delVO=Vo2-Vo1;//V
delIO=delVO/ro2;//mA
Change=delIO/IO*100;//%
disp(Change,"Change in Io(%) : ");
