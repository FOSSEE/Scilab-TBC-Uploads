//problem 24 pagenumber 2.107
//given
format(6);
k1=1.38e-23;//j/k
t1=298;//k
q=1.6e-19;//columb
vi=10e-3;//volt
ri=10e3;//ohm
//determine output voltage
v0=-(k1*t1/q)*0.4343*log10(vi/ri);
disp('Output voltage = '+string(v0*10^3)+' mV');
