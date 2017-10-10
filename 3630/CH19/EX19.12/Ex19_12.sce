clc;
ra=3000;
rb=2700;
c1=0.000000033;
f0=(1.44/((ra+2*rb)*c1));
dutycycle=((ra+rb)/(ra+2*rb))*100;
PW=0.693*((ra+rb)*c1);
disp('kHz',f0/1000,"f0=");//The answers vary due to round off error
disp('%',dutycycle,"dutycycle=");//The answers vary due to round off error
disp('mS',floor(PW*1000000),"PW=");//The answers vary due to round off error
