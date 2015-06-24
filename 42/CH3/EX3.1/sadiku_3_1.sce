clear;
clc;
B1=[0,5,0],B2=[5,%pi/2,0],C1=[0 5 10],C2=[5 %pi/2 0],D1=[5 0 10],D2=[5,0,10],p=5;
BC=integrate('1','Z',0,10);
disp(BC);   //as dl will be along dz
CD=integrate('5','Q',0,%pi/2);
disp(CD);   //dl will be along d(phi)