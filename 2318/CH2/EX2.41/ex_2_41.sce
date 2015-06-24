//Example 2.41:primary current ,phase error 
clc;
clear;
close;
zs=0.433+%i*0.25;//ohm
zs1=0.15+%i*0.0;//ohm
zs2=zs+zs1;//ohm
zsa=sqrt(real(zs2)^2+imag(zs2)^2);//
zsng=atand(imag(zs2)/real(zs2));//
nt=2;//turns
l1=8;//
l2=4;//
ie=l2/nt;//
im=l1/nt;//
tnt=198;//turns
is=5;//A
K=((tnt/2)+((ie*cosd(zsng))+(im*sind(zsng)))/is);//
ip=K*is;//A
th=((im*cosd(zsng))-(ie*sind(zsng)))/((tnt/2)*is);//
disp(ip,"primary current is,(A)=")
disp(th,"phase error is,(radian)=")
