clear;
clc;
B=1,n=60*%pi,Ur=1,Eo=10^-9 /(36*%pi),Uo=4*%pi*10^-7;
Er=Uo*Ur/(n^2 *Eo);
disp(Er,'Er =');
w=B/sqrt(Eo*Er*Uo*Ur);
disp(w*10^-6, 'w in Mrad/sec');