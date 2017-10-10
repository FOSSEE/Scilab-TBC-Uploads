//problem 10 pagenumber 5.101
//given
r1=100e3;format(6);
rf=250e3;
r3=70e3;//ohm
fce=200;//hz
fci=2e3;//hz
ft=1e6;//hz
enw=20e-9;
inw=0.5e-12;
f1=0.1;
fa=ft/(1+(rf/r1));
rn=r1*rf/(r1+rf);
p=fce*log(fa/f1)+1.57*fa-f1;
q=(r3^2+rn^2)*(fci*log(fa/f1)+1.5*fa-f1);
r=1.65e-20*(r3+rn)*(1.57*fa-f1);
en=(1+rf/r1)*(enw^2+p+inw^2*q+r);
disp('rms voltage = '+string(sqrt(en))+' μvolt rms');//error in book

