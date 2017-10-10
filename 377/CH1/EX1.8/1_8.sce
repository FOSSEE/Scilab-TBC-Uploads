disp("v=(1/(2*pi))*sqrt(k/m0)");
pi=3.14;
k=10;
m0=1*10^-3;
h=6.6;
v=(1/(2*pi))*sqrt(k/m0);
printf('\n The value of v is %f Hz',v);
E0=(h/2)*v;
printf('\n The zero point energy is %f *10^-32 J',E0);