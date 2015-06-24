//Ex 9.1
//Band pass Filter Design
//a
clc;
w1=10*10^3;
w2=15*10^3;
wot=sqrt(w1*w2);
wbt=w2-w1;
s=%s;
w=poly(0,'w');
wt=poly(0,'wt');
wx=(wt^2-wot^2)/(wbt*wt);
disp(w);
//b
//Let n=2
hb2=1/(s^2+sqrt(2)*s+1);
hb21=horner(hb2,(%i*w));
disp(hb21);
hb22=horner(hb21,wx);
disp(hb22);