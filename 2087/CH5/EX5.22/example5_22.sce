

//example 5.22
//calculate coefficient of permeability
//drawdown in test well
clc;
//given
r=0.25;       //radius of test well
r1=10;        //distance of first well
r2=60;        //distance of second well
Q=0.1;        //discharge(cumec/sec)
s1=4;         //drawdown of first well
s2=3;         //drawdown of second well
b=20;         //thickness of well
k=1000*Q*log10(r2/r1)/(2.72*b*(s1-s2));
mprintf("coefficient of permeability=%fD-3 m/sec",k);
s=s2+Q*log10(r2/r)/(2.72*b*k);
s=round(s*100)/100;
mprintf("\ndrawdown in test well=%f m.",s); 

