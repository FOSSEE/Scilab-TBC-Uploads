//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 13.18
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given
lambda=850e-9;//Operating wavekength of the system in m
alpha=2.5;//Fiber loss in dB/km
Pi=1e-3;//Input power in W
Np=1000;//Minimum number of photons per bit of information
B=100e6;//Bit rate in b/s
h=6.63e-34;//Planck's constant in SI Units
c=3e8;//Speed of photons in m/s
v=c/lambda;//Frequency corresponding to the operating frequency

Lmax=10/alpha*log10(2*Pi/(Np*B*h*v));//Maximum permissible loss-limited length in km
mprintf("\n Maximum permissible loss-limited length Lmax=%.2f km",Lmax);//The answers vary due to round off error
