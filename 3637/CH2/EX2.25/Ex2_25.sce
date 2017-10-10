//problem 25 pagenumber 2.108
//given
format(7);
rf1=10e3;//ohm
vi=1e-2;//volt
vt=0.0257;//volt
//determine output voltage
vi=exp(vi/vt);
v0=-vi*rf1;
disp('Output voltage = '+string(v0)+' V');

