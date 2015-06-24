//Chapter 21, Problem 17
clc;
vi=200e3;                   //rated transformer
pf=0.85;                    //power factor
lcu=1.5e3;                  //copper loss
lfe=1e3;                    //iron loss
po=vi*pf;                   //full-load output power
lt=lcu+lfe;                 //total losses
pi=po+lt;                   //input power
Ef=(1-(lt/pi));             //efficiency
printf("Transformer efficiency at full load = %f percent",Ef*100);
