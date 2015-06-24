// example:-9.2,page no.-473.
// program to design a low pass composite filter with cutoff frequency of 2 MHZ.
fc=2*10^6;f=2.05*10^6;Ro=75;
L=(2*Ro)/(2*%pi*fc);
C=2/(Ro*2*%pi*fc);
for m=sqrt(1-(fc/f)^2)
x=m*L/2;
y=m*C;
z=((1-m^2)/(4*m))*L;  // x,y,z are design parameter assumed.
disp(x,y,z,'design parameter for m=0.2195 ')
end
for m=0.6
 x=m*L/2;
 y=m*C/2;
 z=((1-m^2)/(2*m))*L;  // x,y,z are design parameter assumed.
 disp(x,y,z,'design parameter for m=0.6 ')
end