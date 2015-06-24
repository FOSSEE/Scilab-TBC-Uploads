//Example 8.7: rms value of shot noise ,dark noise and thermal noise current and S/N ratio
clc;
clear;
close;
format('v',6)
disp("part (a)")
n=0.7;//efficiency
e=1.6*10^-19;//charge
h=1.3;//in micro meter
hc=6.626*10^-34;//plack constant
c=3*10^8;//m/s
pin=500;//nW
Ip=((n*e*h*10^-6*pin*10^-9)/(hc*c));//in amperes
df=25;//Mhz
f1=1;//
is2=(2*e*Ip*df*10^6*f1);//
is=sqrt(is2);//in amperes
Id=5*10^-9;//amperes
id2=(2*e*Id*df*10^6);//
id=sqrt(id2);//in amperes
k=1.38*10^-23;//
t=300;//in kelvin
rl=1000;//ohms
it2=((4*k*t*df*10^6)/rl);//
it=sqrt(it2);//in amperes
disp(is*10^9,"rms value of shot noise current is,(nA)=")
disp(id*10^9,"rms value of dark current is,(nA)=")
disp(it*10^9,"rms value of thermal noise current is,(nA)=")
format('v',4)
disp("part (b)")
n=0.7;//efficiency
e=1.6*10^-19;//charge
h=1.3;//in micro meter
hc=6.626*10^-34;//plack constant
c=3*10^8;//m/s
pin=500;//nW
Ip=((n*e*h*10^-6*pin*10^-9)/(hc*c));//in amperes
df=25;//Mhz
f1=1;//
is2=(2*e*Ip*df*10^6*f1);//
is=sqrt(is2);//in amperes
Id=5*10^-9;//amperes
id2=(2*e*Id*df*10^6);//
id=sqrt(id2);//in amperes
k=1.38*10^-23;//
t=300;//in kelvin
rl=1000;//ohms
it2=((4*k*t*df*10^6)/rl);//
it=sqrt(it2);//in amperes
itt2=is2+id2+it2;//in A^2
ip2=Ip^2;//
sn=ip2/itt2;//
disp(sn,"S/N ratio is")
//S/N ratio is calculated wrong in the textbook
