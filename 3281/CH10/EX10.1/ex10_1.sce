//Page Number: 554
//Example 10.1
clc;
//Given,

z0=50; //ohm
t=0.001; //mm
b=0.32; //cm
er=2.20; 
tandel= 0.0005;
rs=0.026; //ohm
f=10D+9; //Hz
c=3D+8;//m/sec

p=sqrt(er)*z0;
//As p<120
w=b*[((30*%pi)/p)-0.441];
disp('cm',w,'Width');

//Attenuation
k={(2*%pi*f*sqrt(er))/c};
ad=(k*tandel)/2;

//and
A=1+{(2*w)/(b-t)}+[{(b+t)/((b-t)*%pi)}*log(((2*b)-t)/t)];
//Hence 
ac=(2.7D-3*rs*er*z0*A)/{30*%pi*(b-t)*1D-2};
//Total attenution
a=ad+ac;

//Total attenution in db
x=exp(a);
alp=20*log10(x); //db/m

//Total attenution in db/lambda:
lam=c/(sqrt(er)*f);
lamm=lam*1D+2;
alph=alp/lamm;
disp('db/lambda',alph,'Total attenution in db/lambda:');


//Answer in book for alph is given as 0.856 but it should be 0.0856 as value of f is taken as 10D+10 but it should be 10D+9






