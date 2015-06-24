

//example 5.21
//calculate transmissibility
//drawdown at pumping well
clc;
//given
rw=0.15;         //radius of well
b=40;            //depth of acquifer
Q=1500;          //discharge(lpm)
s1=3.5;          //drawdown of first well
s2=2;            //drawdown of second well
H=40;           
r1=25;           //distance of first well
r2=75;           //distance of second well
h1=H-s1;
h2=H-s2;
k=Q*2.303*log10(r2/r1)/(%pi*1000*60*(h2^2-h1^2));
T=b*k*1000;
mprintf("transmissibility=%fD-3 square metre/sec",T);

hw=(h2^2-(Q*2.303*log10(r2/rw)/(%pi*k*60000)))^0.5;
sw=H-hw;
sw=round(sw*100)/100;
mprintf("\ndrawdown at pumping well=%f m.",sw);
