//Page Number: 8.25
//Example 8.24
clc;
//Given, band limited gaussian noise with psd,
S=9.6D-5; //W/Hz for |f|<8kHz
L=100D-3; //H
R=100; //Ohms

//(a) Noise power at input of filter

x0=-8000;
x1=8000;
Pni=S*(integrate('1','f',x0,x1));
disp('W',Pni,'Noise power at input of filter:');

//Plot
x=linspace(-8,8,3);
y=linspace(0,1,1);

plot(x,y);


