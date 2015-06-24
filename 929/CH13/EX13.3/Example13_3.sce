//Example 13.3

clear;

clc;

Kv=10^4;

f0=10*10^3;

s=5*10^3;

fo1=20*10^3;

fo2=5*10^3;

K0=2*%pi*s;

wo1=2*%pi*fo1;

w0=2*%pi*f0;

vE1=(wo1-w0)/K0;

wo2=2*%pi*fo2;

vE2=(wo2-w0)/K0;

printf("(a) Control Voltage vE needed to lock the PLL on 20 kHz input signal=%.d V",vE1);

printf("\n    Control Voltage vE needed to lock the PLL on 5 kHz input signal=%.d V",vE2);

wimod=2*%pi*10^3;

vemod=wimod/K0;

tau=1/Kv;

printf("\n\n(b) ve(t)=%.1f[",vemod);

printf("1-exp(-t/%.d",tau*10^6);

printf(" us)]u(t) V");

fm=2.5*10^3;

wm=2*%pi*fm;

wi1mod=2*%pi*10*10^3*0.1;

vewirat=(1/K0)/(1+((%i*2*%pi*fm)/Kv));

ve3=wi1mod*vewirat;

ve3mod=abs(ve3);

theta=(180/%pi)*atan(imag(ve3)/real(ve3));

printf("\n\n(c) ve(t)=%.4fcos(",ve3mod);

printf("%.2ft",wm);

printf("%.2f) V",theta);