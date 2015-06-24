clear;
clc;
x=1;l=12;V=0.1;
V1=1-V; 
//V1=ratio of voltage at 1km from the sending end to the voltage at sending end
P=-log(V1);
V2=exp(-P*l);
x=V2*100;x1=round(x*100)/100;
//x=ratio of voltage across the load impedance to the voltage at sending end
printf("Voltage across the load impedance is %f percentage of the sending end voltage",x1);
