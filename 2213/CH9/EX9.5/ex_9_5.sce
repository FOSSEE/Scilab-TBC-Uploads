//Example 9.5:diverter resistance
clc;
clear;
close;
format('v',6)
nf=1;//
n2=1.25*nf;//
of=1;//
of2=nf/n2;//
isef=1;//
ise2=0.66667;//
ia2=(1/ise2);//
idiv=ia2-ise2;//
rdiv=ise2/idiv;//
disp(rdiv*100,"diverter resistance required as percentage of the field resistance is")
//answer is wrong in the textbook
