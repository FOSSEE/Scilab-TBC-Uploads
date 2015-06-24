//Example No. 10.10.1
clc;
clear;
close;
format('v',7);
Gain=8.5;//dB(Gain)
tau=0.822;sigma=0.149;//for given gain
alfa=2*atand((1-tau)/4/sigma);//degree
fL=54;//MHz(Lower frequency)
fU=216;//MHz(Upper frequency)
c=3*10^8;//m/s(Speed of light)
lambdaU=c/(fU*10^6);//m(Upper wavelength)
lambdaL=c/(fL*10^6);//m(Lower wavelength)
l1=lambdaU/2;//m(Length of element1)
lN=lambdaL/2;//m(Length of longest element)
l2=l1/tau;l3=l2/tau;l4=l3/tau;l5=l4/tau;l6=l5/tau;l7=l6/tau;l8=l7/tau;l9=l8/tau;//m(Length of elements)
d1=2*sigma*l1;d2=2*sigma*l2;d3=2*sigma*l3;d4=2*sigma*l4;d5=2*sigma*l5;d6=2*sigma*l6;d7=2*sigma*l7;d8=2*sigma*l8;d9=2*sigma*l9;//meter(Spacing between elements)
d=d1+d2+d3+d4+d5+d6+d7+d8+d9;//meter(total spacing)
disp(lN,"Length(m) of longest element : ");
disp(l1,"Length(m) of element1 : ");
disp(l2,"Length(m) of element2 : ");
disp(l3,"Length(m) of element3 : ");
disp(l4,"Length(m) of element4 : ");
disp(l5,"Length(m) of element5 : ");
disp(l6,"Length(m) of element6 : ");
disp(l7,"Length(m) of element7 : ");
disp(l8,"Length(m) of element8 : ");
disp(l9,"Length(m) of element9 : ");
disp(d1,"Spacing(m) of element1 : ");
disp(d2,"Spacing(m) of element2 : ");
disp(d3,"Spacing(m) of element3 : ");
disp(d4,"Spacing(m) of element4 : ");
disp(d5,"Spacing(m) of element5 : ");
disp(d6,"Spacing(m) of element6 : ");
disp(d7,"Spacing(m) of element7 : ");
disp(d8,"Spacing(m) of element8 : ");
disp(d9,"Spacing(m) of element9 : ");
disp(d,"Total Spacing length(m) : ");
//Answer is not accurate in the book.
