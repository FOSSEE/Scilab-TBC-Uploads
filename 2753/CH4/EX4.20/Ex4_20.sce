//Example 4.20: 
clc;
clear;
close;
//given data :
format('v',5)
A=50;//gain without feedback
Af=25;//gain with feedback
Beta=(((A/Af)-1)/A);//feed back ratio
Ad=40;//new gain after ageing
Af1=(Ad/(1+(Beta*Ad)));//new gain with feedback
df=Af-Af1;// reduction in gain
pdf= (df/Af)*100;//percentage reduction in gain
disp(pdf," percentage reduction in gain is ,(%)=")

