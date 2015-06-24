

//example 5.16
//calculate transmissibility of acquifer
//draw daown in main well
clc;
//given
H=25;          //static water level
rw=0.15;       //radius of well
Q=5400;        //discharge(litre/min)
t=24;          //time of discharge
r1=30;          //distance of first well
s1=1.11;       //drawdown
h1=H-s1;
r2=90;         //distance of second well
s2=0.53;       //drawdown
h2=H-s2;
k=(Q*2.303*log10(r2/r1))/(%pi*(h2^2-h1^2)*60000);
T=k*H;
T=round(T*10000)/10000;
mprintf("transmissibility of acquifer=%f cumec/sec.",T);
hw=(h2^2-(Q*2.303*log10(r2/rw))/(%pi*k*60000))^0.5;
sw=H-hw;
sw=round(sw*100)/100;
printf("\ndraw daown in main well=%f m.",sw);

