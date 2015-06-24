clear;
clc;

wc=.844;
t=9.53;
d=19.53;
bl=7950;
fs=2;
p=40;
wi=(%pi)*t*(t+d)*913.5*10^(-6);
wh=(d+2*t)*p*10^(-3);
wr=sqrt((wc+wi)^2 + wh^2);

H=(bl/fs);  //bl=breaking load     fs=factor of safety
l=275;
sag=wr*l*l/(8*H);
printf("The deflected sag is:%.3f m",sag);

vsag=(wc+wi)*l*l/(8*H);
printf("\n The vertical component of sag is:%.2f m",vsag);
