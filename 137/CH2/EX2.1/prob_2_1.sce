clc;
//page no 17
//prob 2.1 b]
//Assuming SI unit for all quantities
// the given signal does not tend to zero as t->oo. However it is periodic & therefore its power exist. therefore averaging the sq. of the signal over infinitely large interval is similar to averaging it to over one time period
t0=-1;t1=1;
y=integrate('t^2','t',t0,t1);
disp(+'watt',y/2,'power of signal');