//Example 3.16: Insolution resistance of the cable
clc;
clear;
close;
US=2.5;//SHUNT
SD=250;//DIVISIONS
x=US*SD;//
sr=350;//scale readomh
sd1=1000;//shunt
y=sr*sd1;//
r=1;//Mega ohms
ro=(y/x)*r;//mega ohms
disp(round(ro),"Insolution resistance,R(M-ohm) = ")
