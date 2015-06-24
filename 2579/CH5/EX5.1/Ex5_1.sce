//Ex:5.1
clc;
clear;
close;
ht=100;// transmitter height in m
hr=9;// receiver height in m
D=3550*(sqrt(ht)+sqrt(hr));// distance to horizon in m
f=60;// frequency in MHz
y=300/f;// wavelength in m
p=10*1000;// power in watt
d=10*1000;// distance in m
h=5;
Et=(88*sqrt(p)*hr*ht)/(h*d^2);// the field strength in V/m
et=10^-3;// field strength in V/m
d2=(88*sqrt(p)*hr*ht)/(h*et);
d1=sqrt(d2);// distance at which the field strength reuces to 1 mV/meter
printf("The field strength = %f mV/m", Et*1000);
printf("\n The distance at which the field strength reuces to 1 mV/meter = %f*10^3 meter", d1/1000);