clc; 
//Assuming SI unit for all quantities
//page 225
//problem 5.5
// An angle modulated signal with carrier frequency wc = 2*pi*10^5 is described by the equation Qem= 10cos(@(t)) where @(t)=wct+5sin3000t+10sin2000pi*t
B=2000*%pi/(2*%pi);//signal bandwidthis the highest frequency in m(t)
Ac=10;//carrier amplitude
P=Ac^2/2;// carrier power
disp(+'watt',P,'a) The carrier power is ');
// to find frequency derivative df, e find instantaneous freq. w as
// wi=d/dt(@(t))= wc+15000cos3000t+20000pi*cos2000pi*t;
// The carrier derivative is 15000cos3000t+20000pi*cos2000pi*t. The two sinusoids will add in phase at some point and the maximum value of the expression is dW=15000+20000pi
dW=15000+20000*%pi;
df=dW/(2*%pi);
disp(+'Hz',df,'b) The frequency deviation in Hz is ');
// The deviation ratio B1 is given as
B1=df/B;
disp(B1,'c) The deviation ratio is ');
//The phase deviation is the maximum value of the angle @(t) and is given b d@
d=5+10;
disp(+'rad',d,'d)The phase deviation in rad is');
Bem=2*(df+B);
disp(+'Hz',Bem,'e)Bandwidth is ');