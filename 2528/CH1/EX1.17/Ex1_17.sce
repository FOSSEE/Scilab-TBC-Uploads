//Chapter 1
//page 30
//Example no 1-17
//figure 1.15
//Given 
clc;
clear;
Avmidband=26;
f=(100:.5:40000+.5);

Av=[Avmidband*ones(200+.5:.5:10000-.5)];
for i=0:6/200:6
Av=[Avmidband-i Av]
end
for i=0:12/40000:12
Av=[Av Avmidband-i]
end
for i=0:6/20000:6
Av=[Av Avmidband-12-i]
end
x=ones(Av)
clf
gainplot(f,x)
plot(f,Av)
title('Gainplot for complete amplifier')

