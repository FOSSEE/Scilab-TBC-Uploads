//Ex:25
clc;
clear;
close;
r_b=10*log(60*10^6)/log(10);//in db Hz
Eb_n=8;//Energy per bit to noise power density in db
c_n=Eb_n+r_b;//in db
printf("The C/N ratio=%f db",c_n);