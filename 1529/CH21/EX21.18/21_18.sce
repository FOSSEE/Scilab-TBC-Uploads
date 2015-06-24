//Chapter 21, Problem 18
clc;
vi=200e3;                       //rated transformer
pf=0.85;                        //power factor
lcu=(1/2)^2*1.5e3;              //copper loss
lfe=1e3;                        //iron loss
p0=(1/2)*vi*pf;                 //full-load output power
lt=lcu+lfe;                     //total losses
pi=p0+lt;                       //input power
Ef=(1-(lt/pi));                 //efficiency
printf("Transformer efficiency at half load = %.3f percent",Ef*100);
