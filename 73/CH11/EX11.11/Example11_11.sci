//Chapter 11_Nonlinear Circuit Application
//Caption :Design Peak Detector
//Example11.11: Design a positive peak detector using type uA 760 comparator that can respond to a 100 mV(pp),5 MHz sinusoidal input signal.The device has following specifications. Response time=25 ns, propagation time=12 ns, and Input bias current=8uA.
//Solution:
clear;
clc;
Vp=50*10^-3;//since peak-peak voltage is 100 mV
f=5*10^6;
T=200*10^-9;
t=15*10^-9//since rise time(t) should be greater than propagation delay(12ns)
deltaVc=Vp*(1-cos(4*t/T*90*(%pi)/180));
Ib=8*10^-6;//input bias current
C=Ib/(deltaVc/T);
disp('mV',deltaVc*10^3,'voltage change is:')
disp('pF',C*10^12,'capacitor value is:')
//Note:
// the Exact value as calculated is taken to calculate C, so C=293.59555 pF. If approx value of deltaVc is taken as 5 mV then C=320 pF